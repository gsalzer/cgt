Processing contract: /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol:BasicNFT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol:NFT
Processing contract: /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol:NFTEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol:PlanetToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicNFT':
    |}
    |
  > |contract BasicNFT is NFT, NFTEvents 
    |{
    |  uint public totalTokens;
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |
    |  // Array of owned tokens for a user
  > |  mapping(address => uint[]) public ownedTokens;
    |  mapping(address => uint) _virtualLength;
    |  mapping(uint => uint) _tokenIndexInOwnerArray;
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |
    |  // Mapping from token ID to owner
  > |  mapping(uint => address) public tokenOwner;
    |
    |  // Allowed transfers for a token (only one at a time)
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |
    |  // Allowed transfers for a token (only one at a time)
  > |  mapping(uint => address) public allowedTransfer;
    |
    |  // Metadata associated with each token
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |
    |  // Metadata associated with each token
  > |  mapping(uint => string) public tokenMetadata;
    |
    |  function totalSupply() public constant returns (uint) 
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function balanceOf(address owner) public constant returns (uint) 
    |  {
    |    return _virtualLength[owner];
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function getAllTokens(address owner) public constant returns (uint[]) 
    |  {
    |    uint size = _virtualLength[owner];
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function ownerOf(uint tokenId) public constant returns (address) 
    |  {
    |    return tokenOwner[tokenId];
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function transfer(address to, uint tokenId) public
    |  {
    |    require(tokenOwner[tokenId] == msg.sender || allowedTransfer[tokenId] == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function takeOwnership(uint tokenId) public 
    |  {
    |    require(allowedTransfer[tokenId] == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function approve(address beneficiary, uint tokenId) public 
    |  {
    |    require(msg.sender == tokenOwner[tokenId]);
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function metadata(uint tokenId) constant public returns (string) 
    |  {
    |    return tokenMetadata[tokenId];
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'BasicNFT':
    |contract BasicNFT is NFT, NFTEvents 
    |{
  > |  uint public totalTokens;
    |
    |  // Array of owned tokens for a user
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'BasicNFT':
    |  mapping(uint => string) public tokenMetadata;
    |
  > |  function totalSupply() public constant returns (uint) 
    |  {
    |    return totalTokens;
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function _transfer(address from, address to, uint tokenId) internal returns(bool)
    |  {
    |    allowedTransfer[tokenId] = 0;
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function _removeTokenFrom(address from, uint tokenId) internal 
    |  {
    |    require(_virtualLength[from] > 0);
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'BasicNFT':
    |  }
    |
  > |  function _addTokenTo(address owner, uint tokenId) internal 
    |  {
    |    if (ownedTokens[owner].length == _virtualLength[owner]) 
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |  function _transfer(address from, address to, uint tokenId) internal returns(bool)
    |  {
  > |    allowedTransfer[tokenId] = 0;
    |    _removeTokenFrom(from, tokenId);
    |    _addTokenTo(to, tokenId);
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |    uint index = _tokenIndexInOwnerArray[tokenId];
    |    uint swapToken = ownedTokens[from][length - 1];
  > |    ownedTokens[from][index] = swapToken;
    |    _tokenIndexInOwnerArray[swapToken] = index;
    |    _virtualLength[from]--;
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |    uint swapToken = ownedTokens[from][length - 1];
    |    ownedTokens[from][index] = swapToken;
  > |    _tokenIndexInOwnerArray[swapToken] = index;
    |    _virtualLength[from]--;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |    ownedTokens[from][index] = swapToken;
    |    _tokenIndexInOwnerArray[swapToken] = index;
  > |    _virtualLength[from]--;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |    if (ownedTokens[owner].length == _virtualLength[owner]) 
    |    {
  > |      ownedTokens[owner].push(tokenId);
    |    } 
    |    else 
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |    else 
    |    {
  > |      ownedTokens[owner][_virtualLength[owner]] = tokenId;
    |    }
    |    tokenOwner[tokenId] = owner;
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |      ownedTokens[owner][_virtualLength[owner]] = tokenId;
    |    }
  > |    tokenOwner[tokenId] = owner;
    |    _tokenIndexInOwnerArray[tokenId] = _virtualLength[owner];
    |    _virtualLength[owner]++;
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |    }
    |    tokenOwner[tokenId] = owner;
  > |    _tokenIndexInOwnerArray[tokenId] = _virtualLength[owner];
    |    _virtualLength[owner]++;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicNFT':
    |    tokenOwner[tokenId] = owner;
    |    _tokenIndexInOwnerArray[tokenId] = _virtualLength[owner];
  > |    _virtualLength[owner]++;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicNFT':
    |    if (allowedTransfer[tokenId] != 0) 
    |    {
  > |      allowedTransfer[tokenId] = 0;
    |      TokenTransferDisallowed(tokenId, allowedTransfer[tokenId]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicNFT':
    |      TokenTransferDisallowed(tokenId, allowedTransfer[tokenId]);
    |    }
  > |    allowedTransfer[tokenId] = beneficiary;
    |    TokenTransferAllowed(tokenId, beneficiary);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicNFT':
    |  function _transfer(address from, address to, uint tokenId) internal returns(bool)
    |  {
  > |    allowedTransfer[tokenId] = 0;
    |    _removeTokenFrom(from, tokenId);
    |    _addTokenTo(to, tokenId);
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(150)

[33mWarning[0m for LockedEther in contract 'NFTEvents':
    |}
    |
  > |contract NFTEvents 
    |{
    |  event TokenCreated(uint tokenId, address owner, string metadata);
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(52)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable 
    |{
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable 
    |{
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |    
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xce85675ea91f8afe2a67869a8b1f9136187dc772.sol(36)


