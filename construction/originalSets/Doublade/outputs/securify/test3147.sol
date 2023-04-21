Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:DecentralandInvite
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:ERC721Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:ERC721BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:ERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:ERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:ERC721Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(155)

[31mViolation[0m for LockedEther in contract 'DecentralandInvite':
    |// File: contracts/Invite.sol
    |
  > |contract DecentralandInvite is ERC721Token, Ownable {
    |
    |    mapping (address => uint256) public balance;
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(777)

[33mWarning[0m for UnhandledException in contract 'DecentralandInvite':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(580)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DecentralandInvite':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |pragma solidity ^0.4.24;
    |
  > |// File: openzeppelin-solidity/contracts/ownership/Ownable.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(707)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(722)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(723)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(729)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(730)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    super._mint(_to, _tokenId);
    |
  > |    allTokensIndex[_tokenId] = allTokens.length;
    |    allTokens.push(_tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(742)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |
    |    allTokensIndex[_tokenId] = allTokens.length;
  > |    allTokens.push(_tokenId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(743)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |// File: contracts/Invite.sol
    |
  > |contract DecentralandInvite is ERC721Token, Ownable {
    |
    |    mapping (address => uint256) public balance;
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(777)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |
    |    function allow(address target, uint256 amount) public onlyOwner {
  > |        balance[target] = amount;
    |        emit UpdateInvites(target, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(791)

[33mWarning[0m for UnrestrictedWrite in contract 'DecentralandInvite':
    |    function invite(address target, bytes note) public {
    |        require(balance[msg.sender] > 0);
  > |        balance[msg.sender] -= 1;
    |        uint256 id = totalSupply();
    |        _mint(target, id);
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(799)

[33mWarning[0m for LockedEther in contract 'ERC721BasicToken':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721BasicToken is ERC721Basic {
    |  using SafeMath for uint256;
    |  using AddressUtils for address;
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(273)

[33mWarning[0m for UnhandledException in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(580)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(556)

[33mWarning[0m for LockedEther in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is ERC721, ERC721BasicToken {
    |  // Token name
    |  string internal name_;
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(594)

[33mWarning[0m for UnhandledException in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(580)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |pragma solidity ^0.4.24;
    |
  > |// File: openzeppelin-solidity/contracts/ownership/Ownable.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(545)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(556)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is ERC721, ERC721BasicToken {
    |  // Token name
    |  string internal name_;
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(594)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(707)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(722)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(723)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(729)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(730)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(60)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xce55f653b5b7a112bfe2ef55fa5621abdab16d39.sol(185)


