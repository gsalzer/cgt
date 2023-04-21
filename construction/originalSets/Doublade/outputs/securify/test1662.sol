Processing contract: /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol:ERC721Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol:Tokenizator
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC721Token':
    | * Generic implementation for the required functionality of the ERC721 standard
    | */
  > |contract ERC721Token is ERC721 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |pragma solidity ^0.4.18;
    |
  > |// File: zeppelin-solidity/contracts/math/SafeMath.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    | * Generic implementation for the required functionality of the ERC721 standard
    | */
  > |contract ERC721Token is ERC721 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(_to != owner);
    |    if (approvedFor(_tokenId) != 0 || _to != 0) {
  > |      tokenApprovals[_tokenId] = _to;
    |      Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function clearApproval(address _owner, uint256 _tokenId) private {
    |    require(ownerOf(_tokenId) == _owner);
  > |    tokenApprovals[_tokenId] = 0;
    |    Approval(_owner, 0, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function addToken(address _to, uint256 _tokenId) private {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    uint256 length = balanceOf(_to);
    |    ownedTokens[_to].push(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    tokenOwner[_tokenId] = _to;
    |    uint256 length = balanceOf(_to);
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |    totalTokens = totalTokens.add(1);
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 length = balanceOf(_to);
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |    totalTokens = totalTokens.add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
  > |    totalTokens = totalTokens.add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    tokenOwner[_tokenId] = 0;
    |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    tokenOwner[_tokenId] = 0;
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    tokenOwner[_tokenId] = 0;
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |    totalTokens = totalTokens.sub(1);
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |    totalTokens = totalTokens.sub(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
  > |    totalTokens = totalTokens.sub(1);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(276)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(9)

[31mViolation[0m for LockedEther in contract 'Tokenizator':
    |   per day by any address.
    | */
  > |contract Tokenizator is ERC721Token {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |pragma solidity ^0.4.18;
    |
  > |// File: zeppelin-solidity/contracts/math/SafeMath.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |    require(_to != owner);
    |    if (approvedFor(_tokenId) != 0 || _to != 0) {
  > |      tokenApprovals[_tokenId] = _to;
    |      Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |  function clearApproval(address _owner, uint256 _tokenId) private {
    |    require(ownerOf(_tokenId) == _owner);
  > |    tokenApprovals[_tokenId] = 0;
    |    Approval(_owner, 0, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |  function addToken(address _to, uint256 _tokenId) private {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    uint256 length = balanceOf(_to);
    |    ownedTokens[_to].push(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |    tokenOwner[_tokenId] = _to;
    |    uint256 length = balanceOf(_to);
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |    totalTokens = totalTokens.add(1);
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |    uint256 length = balanceOf(_to);
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |    totalTokens = totalTokens.add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
  > |    totalTokens = totalTokens.add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    tokenOwner[_tokenId] = 0;
    |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |
    |    tokenOwner[_tokenId] = 0;
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |    tokenOwner[_tokenId] = 0;
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |    totalTokens = totalTokens.sub(1);
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |    totalTokens = totalTokens.sub(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
  > |    totalTokens = totalTokens.sub(1);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |   per day by any address.
    | */
  > |contract Tokenizator is ERC721Token {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |  ) public {
    |    require(now > lockTimestamp);
  > |    lockTimestamp = lockTimestamp.add(1 days);
    |    uint256 _tokenId = totalSupply().add(1);
    |    _mint(msg.sender, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'Tokenizator':
    |    uint256 _tokenId, bytes32 _name, string _description, string _base64Image
    |  ) private {
  > |    tokenMetadata[_tokenId] = TokenMetadata(
    |      _name, now, msg.sender, _description, _base64Image
    |    );
  at /home/jiaming/mavs_srcs/contract@0x6a190eef45f589373a463afb3b90493e696c45e2.sol(332)


