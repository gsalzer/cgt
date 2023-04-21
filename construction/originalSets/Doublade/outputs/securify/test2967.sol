Processing contract: /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol:NFTKred
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'NFTKred':
    | * Generic implementation for the required functionality of the ERC721 standard
    | */
  > |contract NFTKred is ERC721 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    | * Generic implementation for the required functionality of the ERC721 standard
    | */
  > |contract NFTKred is ERC721 {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        require(_to != owner);
    |        if (approvedFor(_tokenId) != 0 || _to != 0) {
  > |            tokenApprovals[_tokenId] = _to;
    |            emit Approval(owner, _to, _tokenId);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |
    |        // Batch details - also available from the metadata endpoints
  > |        nftBatch[_tokenId] = _batch;
    |        nftSequence[_tokenId] = _sequence;
    |        nftCount[_tokenId] = _count;
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        // Batch details - also available from the metadata endpoints
    |        nftBatch[_tokenId] = _batch;
  > |        nftSequence[_tokenId] = _sequence;
    |        nftCount[_tokenId] = _count;
    |
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        nftBatch[_tokenId] = _batch;
    |        nftSequence[_tokenId] = _sequence;
  > |        nftCount[_tokenId] = _count;
    |
    |        // Value in CKr + 7 trailing zeroes (to reflect Stellar)
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |
    |        // Value in CKr + 7 trailing zeroes (to reflect Stellar)
  > |        nftValue[_tokenId] = _value;
    |
    |        // Token type
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |    function clearApproval(address _owner, uint256 _tokenId) private {
    |        require(ownerOf(_tokenId) == _owner);
  > |        tokenApprovals[_tokenId] = 0;
    |        emit Approval(_owner, 0, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |    function addToken(address _to, uint256 _tokenId) private {
    |        require(tokenOwner[_tokenId] == address(0));
  > |        tokenOwner[_tokenId] = _to;
    |        uint256 length = balanceOf(_to);
    |        ownedTokens[_to].push(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        tokenOwner[_tokenId] = _to;
    |        uint256 length = balanceOf(_to);
  > |        ownedTokens[_to].push(_tokenId);
    |        ownedTokensIndex[_tokenId] = length;
    |        totalTokens = totalTokens.add(1);
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        uint256 length = balanceOf(_to);
    |        ownedTokens[_to].push(_tokenId);
  > |        ownedTokensIndex[_tokenId] = length;
    |        totalTokens = totalTokens.add(1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        ownedTokens[_to].push(_tokenId);
    |        ownedTokensIndex[_tokenId] = length;
  > |        totalTokens = totalTokens.add(1);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(369)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |        tokenOwner[_tokenId] = 0;
    |        ownedTokens[_from][tokenIndex] = lastToken;
    |        ownedTokens[_from][lastTokenIndex] = 0;
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |
    |        tokenOwner[_tokenId] = 0;
  > |        ownedTokens[_from][tokenIndex] = lastToken;
    |        ownedTokens[_from][lastTokenIndex] = 0;
    |        // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        tokenOwner[_tokenId] = 0;
    |        ownedTokens[_from][tokenIndex] = lastToken;
  > |        ownedTokens[_from][lastTokenIndex] = 0;
    |        // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |        // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |
    |        ownedTokens[_from].length--;
  > |        ownedTokensIndex[_tokenId] = 0;
    |        ownedTokensIndex[lastToken] = tokenIndex;
    |        totalTokens = totalTokens.sub(1);
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        ownedTokens[_from].length--;
    |        ownedTokensIndex[_tokenId] = 0;
  > |        ownedTokensIndex[lastToken] = tokenIndex;
    |        totalTokens = totalTokens.sub(1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTKred':
    |        ownedTokensIndex[_tokenId] = 0;
    |        ownedTokensIndex[lastToken] = tokenIndex;
  > |        totalTokens = totalTokens.sub(1);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(394)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xc2f46fa6a4b91ca39b6e34781434841f7c13ccf8.sol(7)


