Processing contract: /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol:FMWorldAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol:PlayerToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FMWorldAccessControl':
    |}
    |
  > |contract FMWorldAccessControl {
    |    address public ceoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |
    |
  > |    function setPause(bool _pause) external onlyC {
    |        pause = _pause;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |
    |contract FMWorldAccessControl {
  > |    address public ceoAddress;
    |    address public cooAddress;
    |    
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |contract FMWorldAccessControl {
    |    address public ceoAddress;
  > |    address public cooAddress;
    |    
    |    bool public pause = false;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    address public cooAddress;
    |    
  > |    bool public pause = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    }
    |    
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |        ceoAddress = _newCEO;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    }
    |    
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
  > |        ceoAddress = _newCEO;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |
    |    function setPause(bool _pause) external onlyC {
  > |        pause = _pause;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(77)

[33mWarning[0m for LockedEther in contract 'PlayerToken':
    |
    |}
  > |contract PlayerToken is ERC721, FMWorldAccessControl {
    |
    |    struct Player {
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'PlayerToken':
    |
    |
  > |    function setPause(bool _pause) external onlyC {
    |        pause = _pause;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'PlayerToken':
    |    mapping (address => uint256) ownerPlayersCount;
    |    mapping (uint256 => address) playerOwners;
  > |    mapping (uint256 => address) public playerApproved;
    |    
    |    function PlayerToken() public {
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 count) {
    |        return ownerPlayersCount[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId) public view returns (address owner) {
    |        owner = playerOwners[_tokenId];
    |        require(owner != address(0));
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function approve(address _to, uint256 _tokenId) external {
    |        require(msg.sender == ownerOf(_tokenId));
    |        playerApproved[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _tokenId) external {
    |        require(_to != address(0));
    |        require(msg.sender == ownerOf(_tokenId));
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _tokenId) external {
    |        require(_to != address(0));
    |        require(playerApproved[_tokenId] == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function tokensOfOwner(address _owner) public view returns(uint256[] ownerTokens) {
    |        uint256 playersCount = balanceOf(_owner);
    |        if (playersCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function createPlayer(
    |            uint32[7] _skills,
    |            uint256 _position,
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |
    |contract FMWorldAccessControl {
  > |    address public ceoAddress;
    |    address public cooAddress;
    |    
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |contract FMWorldAccessControl {
    |    address public ceoAddress;
  > |    address public cooAddress;
    |    
    |    bool public pause = false;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |    address public cooAddress;
    |    
  > |    bool public pause = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |    
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |        ceoAddress = _newCEO;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |    
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |
    |}
  > |contract PlayerToken is ERC721, FMWorldAccessControl {
    |
    |    struct Player {
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    string public name = "Football Manager Player";
    |    string public symbol = "FMP";
    |
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |
    |    string public name = "Football Manager Player";
  > |    string public symbol = "FMP";
    |
    |    Player[] public players;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |    string public symbol = "FMP";
    |
  > |    Player[] public players;
    |
    |    mapping (address => uint256) ownerPlayersCount;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint256) {
    |        return players.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        ownerPlayersCount[_to]++;
    |        playerOwners[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function getPlayer(uint256 _playerId) public view returns(
    |        uint32 talent,
    |        uint32 tactics,
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'PlayerToken':
    |    }
    |
  > |    function getPosition(uint256 _playerId) public view returns(uint256) {
    |        Player memory player = players[_playerId];
    |        return player.position;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(191)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerToken':
    |
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        ownerPlayersCount[_to]++;
    |        playerOwners[_tokenId] = _to;
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerToken':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        ownerPlayersCount[_to]++;
  > |        playerOwners[_tokenId] = _to;
    |        if (_from != address(0)) {
    |            ownerPlayersCount[_from]--;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerToken':
    |        playerOwners[_tokenId] = _to;
    |        if (_from != address(0)) {
  > |            ownerPlayersCount[_from]--;
    |            delete playerApproved[_tokenId];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'PlayerToken':
    |        if (_from != address(0)) {
    |            ownerPlayersCount[_from]--;
  > |            delete playerApproved[_tokenId];
    |        }
    |        Transfer(_from, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |        playerOwners[_tokenId] = _to;
    |        if (_from != address(0)) {
  > |            ownerPlayersCount[_from]--;
    |            delete playerApproved[_tokenId];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |        if (_from != address(0)) {
    |            ownerPlayersCount[_from]--;
  > |            delete playerApproved[_tokenId];
    |        }
    |        Transfer(_from, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |pragma solidity ^0.4.16;
    |
  > |contract SafeMath {
    |    function safeAdd(uint256 x, uint256 y) pure internal returns(uint256) {
    |      uint256 z = x + y;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
  > |        ceoAddress = _newCEO;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |
    |    function setPause(bool _pause) external onlyC {
  > |        pause = _pause;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |    function approve(address _to, uint256 _tokenId) external {
    |        require(msg.sender == ownerOf(_tokenId));
  > |        playerApproved[_tokenId] = _to;
    |        Approval(msg.sender, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        ownerPlayersCount[_to]++;
    |        playerOwners[_tokenId] = _to;
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        ownerPlayersCount[_to]++;
  > |        playerOwners[_tokenId] = _to;
    |        if (_from != address(0)) {
    |            ownerPlayersCount[_from]--;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |        playerOwners[_tokenId] = _to;
    |        if (_from != address(0)) {
  > |            ownerPlayersCount[_from]--;
    |            delete playerApproved[_tokenId];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |        if (_from != address(0)) {
    |            ownerPlayersCount[_from]--;
  > |            delete playerApproved[_tokenId];
    |        }
    |        Transfer(_from, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayerToken':
    |    {
    |        Player memory player = Player(_skills[0], _skills[1], _skills[2], _skills[3], _skills[4], _skills[5], _skills[6], _position);
  > |        uint256 newPlayerId = players.push(player) - 1;
    |         _transfer(0, _owner, newPlayerId);
    |        return newPlayerId;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(205)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.16;
    |
  > |contract SafeMath {
    |    function safeAdd(uint256 x, uint256 y) pure internal returns(uint256) {
    |      uint256 z = x + y;
  at /home/jiaming/mavs_srcs/contract@0x4409016e65eb770152316bcdd3f95c8329b4f7c7.sol(3)


