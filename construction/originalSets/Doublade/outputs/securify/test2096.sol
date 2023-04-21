Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:ERC721Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:ERC721BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:ERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:ERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:ERC721Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol:TraxionDeed
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressUtils':
    | * Utility library of inline functions on addresses
    | */
  > |library AddressUtils {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(149)

[33mWarning[0m for LockedEther in contract 'ERC721BasicToken':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721BasicToken is ERC721Basic {
    |  using SafeMath for uint256;
    |  using AddressUtils for address;
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(250)

[33mWarning[0m for UnhandledException in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(529)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(529)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(505)

[33mWarning[0m for LockedEther in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is ERC721, ERC721BasicToken {
    |  // Token name
    |  string internal name_;
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(540)

[33mWarning[0m for UnhandledException in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(529)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(529)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(505)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is ERC721, ERC721BasicToken {
    |  // Token name
    |  string internal name_;
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(540)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(646)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(662)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(668)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(669)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(38)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(176)

[33mWarning[0m for LockedEther in contract 'TraxionDeed':
    |*/
    |
  > |contract TraxionDeed is ERC721Token, Pausable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(720)

[33mWarning[0m for UnhandledException in contract 'TraxionDeed':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(529)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TraxionDeed':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(529)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(504)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(505)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(645)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(646)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(661)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(662)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(668)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(669)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    super._mint(_to, _tokenId);
    |
  > |    allTokensIndex[_tokenId] = allTokens.length;
    |    allTokens.push(_tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(681)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |
    |    allTokensIndex[_tokenId] = allTokens.length;
  > |    allTokens.push(_tokenId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(682)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    uint256 lastToken = allTokens[lastTokenIndex];
    |
  > |    allTokens[tokenIndex] = lastToken;
    |    allTokens[lastTokenIndex] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(704)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |
    |    allTokens[tokenIndex] = lastToken;
  > |    allTokens[lastTokenIndex] = 0;
    |
    |    allTokens.length--;
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(705)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |
    |    allTokens.length--;
  > |    allTokensIndex[_tokenId] = 0;
    |    allTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(708)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    allTokens.length--;
    |    allTokensIndex[_tokenId] = 0;
  > |    allTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(709)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |*/
    |
  > |contract TraxionDeed is ERC721Token, Pausable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(720)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |   */
    |    function mainICO() public onlyOwner isPreICO {
  > |        main_sale = true;
    |        emit MainICO();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(760)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |    function mint(address _to, uint256 value, uint256 weiAmt) internal returns (uint256 _tokenId) {
    |
  > |        weiRaised = weiRaised.add(weiAmt);
    |        iouTokens = iouTokens.add(value);
    |
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(797)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |
    |        weiRaised = weiRaised.add(weiAmt);
  > |        iouTokens = iouTokens.add(value);
    |
    |        _tokenId = tokens.push(Token({
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(798)

[33mWarning[0m for UnrestrictedWrite in contract 'TraxionDeed':
    |        iouTokens = iouTokens.add(value);
    |
  > |        _tokenId = tokens.push(Token({
    |                        mintedFor: _to,
    |                        mintedAt: uint64(now),
  at /home/jiaming/mavs_srcs/contract@0x8929952d55845aef6b7024a888aa3d3b45fc1060.sol(800)


