Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:CardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:ERC721Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:ERC721BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:ERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:ERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:ERC721Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:Manageable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol:Maths
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC721BasicToken':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721BasicToken is ERC721Basic {
    |  using Maths for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(316)

[33mWarning[0m for UnhandledException in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(594)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(_from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(594)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(holder, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(546)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].plus(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].plus(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(559)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].minus(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].minus(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(570)

[33mWarning[0m for LockedEther in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is ERC721, ERC721BasicToken {
    |  // Mapping from owner to list of owned token IDs
    |  mapping (address => uint256[]) internal ownedTokens;
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(624)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |/**
  > | * @title Maths
    | * A library to make working with numbers in Solidity hurt your brain less.
    | */
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(holder, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(398)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(546)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].plus(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(558)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].plus(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(559)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].minus(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].minus(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is ERC721, ERC721BasicToken {
    |  // Mapping from owner to list of owned token IDs
    |  mapping (address => uint256[]) internal ownedTokens;
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(624)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(713)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(729)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(730)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(736)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(737)

[33mWarning[0m for LockedEther in contract 'Manageable':
    | * @title Manageable
    | */
  > |contract Manageable {
    |  address public owner;
    |  address public manager;
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    | */
    |contract Manageable {
  > |  address public owner;
    |  address public manager;
    |
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |contract Manageable {
    |  address public owner;
  > |  address public manager;
    |
    |  event OwnershipChanged(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipChanged(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |   * @param newManager The address to give contract management rights.
    |   */
  > |  function replaceManager(address newManager) public onlyManagement {
    |    require(newManager != address(0));
    |    emit ManagementChanged(manager, newManager);
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |    require(newOwner != address(0));
    |    emit OwnershipChanged(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |    require(newManager != address(0));
    |    emit ManagementChanged(manager, newManager);
  > |    manager = newManager;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(224)

[33mWarning[0m for LockedEther in contract 'Maths':
    | * A library to make working with numbers in Solidity hurt your brain less.
    | */
  > |library Maths {
    |  /**
    |   * @dev Adds two addends together, returns the sum
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return sum the sum of the equation (e.g. addendA + addendB)
    |   */
  > |  function plus(
    |    uint256 addendA,
    |    uint256 addendB
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return difference the difference (e.g. minuend - subtrahend)
    |   */
  > |  function minus(
    |    uint256 minuend,
    |    uint256 subtrahend
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return product the product of the equation (e.g. factorA * factorB)
    |   */
  > |  function mul(
    |    uint256 factorA,
    |    uint256 factorB
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return product the product of the equation (e.g. factorA * factorB)
    |   */
  > |  function times(
    |    uint256 factorA,
    |    uint256 factorB
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return quotient the quotient of the equation (e.g. dividend / divisor)
    |   */
  > |  function div(
    |    uint256 dividend,
    |    uint256 divisor
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return quotient the quotient of the equation (e.g. dividend / divisor)
    |   */
  > |  function dividedBy(
    |    uint256 dividend,
    |    uint256 divisor
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return remainder the remainder of the equation (e.g. dividend % divisor)
    |   */
  > |  function divideSafely(
    |    uint256 dividend,
    |    uint256 divisor
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return result the lesser of the two values
    |   */
  > |  function min(
    |    uint256 a,
    |    uint256 b
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return result the greater of the two values
    |   */
  > |  function max(
    |    uint256 a,
    |    uint256 b
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is less than b
    |   */
  > |  function isLessThan(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a < b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is less than or equal to b
    |   */
  > |  function isAtMost(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a <= b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is greater than b
    |   */
  > |  function isGreaterThan(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a > b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'Maths':
    |   * @return isTrue whether a is less than b
    |   */
  > |  function isAtLeast(uint256 a, uint256 b) public pure returns (bool isTrue) {
    |    isTrue = a >= b;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc70be5b7c19529ef642d16c10dfe91c58b5c3bf0.sol(167)


