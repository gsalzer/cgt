Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:AuctionPaused
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:Claimable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:CryptoWCRC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:ERC721Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:ERC721BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:PayerInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:SafeMath16
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:SafeMath32
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:WorldCupAuction
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:WorldCupControl
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:WorldCupFactory
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol:WorldCupHelper
[33mWarning[0m for LockedEther in contract 'AddressUtils':
    | * Utility library of inline functions on addresses
    | */
  > |library AddressUtils {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(121)

[33mWarning[0m for LockedEther in contract 'AuctionPaused':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract AuctionPaused is Ownable {
    |  event AuctionPause();
    |  event AuctionUnpause();
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(796)

[33mWarning[0m for MissingInputValidation in contract 'AuctionPaused':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'AuctionPaused':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'AuctionPaused':
    |  event AuctionUnpause();
    |
  > |  bool public auctionPaused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(800)

[33mWarning[0m for MissingInputValidation in contract 'AuctionPaused':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function auctionPause() onlyOwner whenNotAuctionPaused public {
    |    auctionPaused = true;
    |    emit AuctionPause();
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(822)

[33mWarning[0m for MissingInputValidation in contract 'AuctionPaused':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function auctionUnpause() onlyOwner whenAuctionPaused public {
    |    auctionPaused = false;
    |    emit AuctionUnpause();
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(830)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionPaused':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionPaused':
    |   */
    |  function auctionPause() onlyOwner whenNotAuctionPaused public {
  > |    auctionPaused = true;
    |    emit AuctionPause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(823)

[33mWarning[0m for UnrestrictedWrite in contract 'AuctionPaused':
    |   */
    |  function auctionUnpause() onlyOwner whenAuctionPaused public {
  > |    auctionPaused = false;
    |    emit AuctionUnpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(831)

[33mWarning[0m for LockedEther in contract 'Claimable':
    | * This allows the new owner to accept the transfer.
    | */
  > |contract Claimable is Ownable {
    |  address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'Claimable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    pendingOwner = newOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(204)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    | */
    |contract Claimable is Ownable {
  > |  address public pendingOwner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'Claimable':
    |   * @dev Allows the pendingOwner address to finalize the transfer.
    |   */
  > |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Claimable':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(214)

[33mWarning[0m for LockedEther in contract 'ERC721BasicToken':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721BasicToken is ERC721Basic {
    |  using SafeMath for uint256;
    |  using AddressUtils for address;
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(332)

[33mWarning[0m for UnhandledException in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(611)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(563)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(576)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(586)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(587)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(179)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(258)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    |
    |
  > |contract PausableToken is ERC721BasicToken, Pausable {
    |	function approve(address _to, uint256 _tokenId) public whenNotPaused {
    |		super.approve(_to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(618)

[33mWarning[0m for UnhandledException in contract 'PausableToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(611)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PausableToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(563)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(576)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(586)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(587)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(8)

[33mWarning[0m for LockedEther in contract 'SafeMath16':
    | * @dev SafeMath library implemented for uint16
    | */
  > |library SafeMath16 {
    |
    |  function mul(uint16 a, uint16 b) internal pure returns (uint16) {
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(88)

[33mWarning[0m for LockedEther in contract 'SafeMath32':
    | * @dev SafeMath library implemented for uint32
    | */
  > |library SafeMath32 {
    |
    |  function mul(uint32 a, uint32 b) internal pure returns (uint32) {
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(54)

[33mWarning[0m for LockedEther in contract 'WorldCupFactory':
    | * @dev Declare token struct, and generated all toekn
    | */
  > |contract WorldCupFactory is Claimable, PausableToken {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(652)

[33mWarning[0m for UnhandledException in contract 'WorldCupFactory':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(611)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WorldCupFactory':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(611)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |   */
    |  function transferOwnership(address newOwner) onlyOwner public {
  > |    pendingOwner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |  function claimOwnership() onlyPendingOwner public {
    |    emit OwnershipTransferred(owner, pendingOwner);
  > |    owner = pendingOwner;
    |    pendingOwner = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |    emit OwnershipTransferred(owner, pendingOwner);
    |    owner = pendingOwner;
  > |    pendingOwner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(563)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(576)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(586)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(587)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    | * @dev Declare token struct, and generated all toekn
    | */
  > |contract WorldCupFactory is Claimable, PausableToken {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(652)

[33mWarning[0m for UnrestrictedWrite in contract 'WorldCupFactory':
    |		uint id = countries.push( Country(_name, initPrice) ) - 1;
    |		tokenOwner[id] = msg.sender;
  > |		ownedTokensCount[msg.sender] = ownedTokensCount[msg.sender].add(1);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xe137e3d0659e7dbf8e309dc6011d672456f379c7.sol(707)


