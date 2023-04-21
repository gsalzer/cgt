Processing contract: /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol:CryptoThingWithDescendants
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol:ERC721Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |/**
  > | * @title Ownable
    | */
    |contract Ownable {
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    | * Generic implementation for the required functionality of the ERC721 standard
    | */
  > |contract ERC721Token is ERC721 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(_to != owner);
    |    if (approvedFor(_tokenId) != 0 || _to != 0) {
  > |      tokenApprovals[_tokenId] = _to;
    |      Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function clearApproval(address _owner, uint256 _tokenId) private {
    |    require(ownerOf(_tokenId) == _owner);
  > |    tokenApprovals[_tokenId] = 0;
    |    Approval(_owner, 0, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function addToken(address _to, uint256 _tokenId) private {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    uint256 length = balanceOf(_to);
    |    ownedTokens[_to].push(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    tokenOwner[_tokenId] = _to;
    |    uint256 length = balanceOf(_to);
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |    totalTokens = totalTokens.add(1);
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 length = balanceOf(_to);
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |    totalTokens = totalTokens.add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
  > |    totalTokens = totalTokens.add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    tokenOwner[_tokenId] = 0;
    |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    tokenOwner[_tokenId] = 0;
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(294)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    tokenOwner[_tokenId] = 0;
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |    totalTokens = totalTokens.sub(1);
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |    totalTokens = totalTokens.sub(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
  > |    totalTokens = totalTokens.sub(1);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(303)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * @title Ownable
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(34)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title SafeMath Library
    | */
  > |library SafeMath {
    |  /**
    |  * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x438301bbb5941f2d6c6db74ee90474cad8692087.sol(41)


