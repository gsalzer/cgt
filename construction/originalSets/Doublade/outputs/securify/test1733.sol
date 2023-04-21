Processing contract: /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol:AetherClockAuction
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol:ClockAuction
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol:ClockAuctionBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for LockedEther in contract 'AetherClockAuction':
    |
    |/// @title Clock auction modified for sale of property
  > |contract AetherClockAuction is ClockAuction {
    |
    |    // @dev Sanity check that allows us to ensure that we are pointing to the
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(509)

[31mViolation[0m for TODAmount in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for TODAmount in contract 'AetherClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(170)

[33mWarning[0m for TODReceiver in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for UnhandledException in contract 'AetherClockAuction':
    |    function _escrow(address _owner, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transferFrom(_owner, this, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(88)

[33mWarning[0m for UnhandledException in contract 'AetherClockAuction':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(97)

[33mWarning[0m for UnhandledException in contract 'AetherClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(170)

[33mWarning[0m for UnhandledException in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherClockAuction':
    |    function _escrow(address _owner, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transferFrom(_owner, this, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherClockAuction':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(97)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AetherClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |        require(_auction.duration >= 1 minutes);
    |
  > |        tokenIdToAuction[_tokenId] = _auction;
    |
    |        AuctionCreated(
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |    /// @param _tokenId - ID of NFT on auction.
    |    function _removeAuction(uint256 _tokenId) internal {
  > |        delete tokenIdToAuction[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |        if (seller == address(nonFungibleContract)) {
    |            // Track gen0 sale prices
  > |            lastSalePrices[saleCount % 5] = price;
    |            saleCount++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'AetherClockAuction':
    |            // Track gen0 sale prices
    |            lastSalePrices[saleCount % 5] = price;
  > |            saleCount++;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(569)

[33mWarning[0m for DAOConstantGas in contract 'ClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(170)

[33mWarning[0m for DAOConstantGas in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for LockedEther in contract 'ClockAuction':
    |
    |/// @title Clock auction for non-fungible tokens.
  > |contract ClockAuction is Pausable, ClockAuctionBase {
    |
    |    /// @dev Constructor creates a reference to the NFT ownership contract
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(363)

[31mViolation[0m for TODAmount in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for TODAmount in contract 'ClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(170)

[33mWarning[0m for TODReceiver in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |    /// @param _tokenId - ID of token whose ownership to verify.
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return (nonFungibleContract.ownerOf(_tokenId) == _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(79)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |    function _escrow(address _owner, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transferFrom(_owner, this, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(88)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(97)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(170)

[33mWarning[0m for UnhandledException in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |    /// @param _tokenId - ID of token whose ownership to verify.
    |    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
  > |        return (nonFungibleContract.ownerOf(_tokenId) == _claimant);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |    function _escrow(address _owner, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transferFrom(_owner, this, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |    function _transfer(address _receiver, uint256 _tokenId) internal {
    |        // it will throw if transfer fails
  > |        nonFungibleContract.transfer(_receiver, _tokenId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(97)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |            msg.sender == nftAddress
    |        );
  > |        nftAddress.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(391)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClockAuction':
    |            // can DoS is the sale of their own asset! (And if it's an
    |            // accident, they can call cancelAuction(). )
  > |            seller.transfer(sellerProceeds);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |        require(_auction.duration >= 1 minutes);
    |
  > |        tokenIdToAuction[_tokenId] = _auction;
    |
    |        AuctionCreated(
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |    /// @param _tokenId - ID of NFT on auction.
    |    function _removeAuction(uint256 _tokenId) internal {
  > |        delete tokenIdToAuction[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'ClockAuction':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(354)

[33mWarning[0m for LockedEther in contract 'ClockAuctionBase':
    |/// @title Auction Core
    |/// @dev Contains models, variables, and internal methods for the auction.
  > |contract ClockAuctionBase {
    |
    |    // Represents an auction on an NFT
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'ClockAuctionBase':
    |
    |    // Reference to contract tracking NFT ownership
  > |    ERC721 public nonFungibleContract;
    |
    |    // Cut owner takes on each auction, measured in basis points (1/100 of a percent).
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'ClockAuctionBase':
    |    // Cut owner takes on each auction, measured in basis points (1/100 of a percent).
    |    // Values 0-10,000 map to 0%-100%
  > |    uint256 public ownerCut;
    |
    |    // Map from token ID to their corresponding auction.
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(51)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(278)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(306)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(304)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(322)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(344)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6e9d4b330aad2f414fa7ae1074afa266b6469364.sol(354)


