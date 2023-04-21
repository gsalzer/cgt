Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol:FMWorldAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol:PlayerToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol:Team
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FMWorldAccessControl':
    |
    |
  > |contract FMWorldAccessControl {
    |    address public ceoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |
    |
  > |    function setPause(bool _pause) external onlyC {
    |        pause = _pause;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |
    |contract FMWorldAccessControl {
  > |    address public ceoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |contract FMWorldAccessControl {
    |    address public ceoAddress;
  > |    address public cooAddress;
    |
    |    bool public pause = false;
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    address public cooAddress;
    |
  > |    bool public pause = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |
    |    function setPause(bool _pause) external onlyC {
  > |        pause = _pause;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(63)

[31mViolation[0m for LockedEther in contract 'Team':
    |
    |
  > |contract Team is FMWorldAccessControl
    |{
    |    struct TeamStruct {
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(70)

[33mWarning[0m for UnhandledException in contract 'Team':
    |        uint256 l = teams[_teamId].playersIds.length;
    |        for (uint256 _playerIndex = 0; _playerIndex < l; _playerIndex++) {
  > |            var (_talent, _tactics, _dribbling, _kick, _speed, _pass, _selection) = playerToken.getPlayer(teams[_teamId].playersIds[_playerIndex]);
    |            sumSkills +=  _tactics + _dribbling + _kick + _speed + _pass + _selection;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(114)

[33mWarning[0m for UnhandledException in contract 'Team':
    |        _teamId = teamsIds.length + 1;
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
  > |        uint256 _position = playerToken.getPosition(_playerId);
    |        teams[_teamId].name = _name;
    |        teams[_teamId].minSkills = _minSkills;
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(163)

[33mWarning[0m for UnhandledException in contract 'Team':
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
    |        for (uint256 i = 0; i < teams[_teamId].playersIds.length; i++) {
  > |            if (playerToken.ownerOf(teams[_teamId].playersIds[i]) == _owner) {
    |                count++;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(194)

[33mWarning[0m for UnhandledException in contract 'Team':
    |        bool isMapOwnerTeamDelete = true;
    |        for (uint256 pl = 0; pl < teams[_teamId].playersIds.length; pl++) {
  > |            if (_owner == playerToken.ownerOf(teams[_teamId].playersIds[pl])) {
    |                isMapOwnerTeamDelete = false;
    |                break;
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Team':
    |        uint256 l = teams[_teamId].playersIds.length;
    |        for (uint256 _playerIndex = 0; _playerIndex < l; _playerIndex++) {
  > |            var (_talent, _tactics, _dribbling, _kick, _speed, _pass, _selection) = playerToken.getPlayer(teams[_teamId].playersIds[_playerIndex]);
    |            sumSkills +=  _tactics + _dribbling + _kick + _speed + _pass + _selection;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Team':
    |        _teamId = teamsIds.length + 1;
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
  > |        uint256 _position = playerToken.getPosition(_playerId);
    |        teams[_teamId].name = _name;
    |        teams[_teamId].minSkills = _minSkills;
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(163)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Team':
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
    |        for (uint256 i = 0; i < teams[_teamId].playersIds.length; i++) {
  > |            if (playerToken.ownerOf(teams[_teamId].playersIds[i]) == _owner) {
    |                count++;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Team':
    |        bool isMapOwnerTeamDelete = true;
    |        for (uint256 pl = 0; pl < teams[_teamId].playersIds.length; pl++) {
  > |            if (_owner == playerToken.ownerOf(teams[_teamId].playersIds[pl])) {
    |                isMapOwnerTeamDelete = false;
    |                break;
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(238)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |pragma solidity ^0.4.16;
    |
  > |contract PlayerToken {
    |    function totalSupply() public view returns (uint256 total);
    |    function balanceOf(address _owner) public view returns (uint balance);
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |
    |
  > |contract Team is FMWorldAccessControl
    |{
    |    struct TeamStruct {
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |        uint256 _position = playerToken.getPosition(_playerId);
    |        teams[_teamId].name = _name;
  > |        teams[_teamId].minSkills = _minSkills;
    |        teams[_teamId].minTalent = _minTalent;
    |        teams[_teamId].logo = _logo;
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |        teams[_teamId].name = _name;
    |        teams[_teamId].minSkills = _minSkills;
  > |        teams[_teamId].minTalent = _minTalent;
    |        teams[_teamId].logo = _logo;
    |        teamsIds.push(_teamId);
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |        teams[_teamId].minTalent = _minTalent;
    |        teams[_teamId].logo = _logo;
  > |        teamsIds.push(_teamId);
    |        _addOwnerPlayerToTeam(_teamId, _owner, _playerId, _position);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |
    |        for (uint i = index; i<teams[_teamId].playersIds.length-1; i++){
  > |            teams[_teamId].playersIds[i] = teams[_teamId].playersIds[i+1];
    |        }
    |        delete teams[_teamId].playersIds[teams[_teamId].playersIds.length-1];
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'Team':
    |            teams[_teamId].playersIds[i] = teams[_teamId].playersIds[i+1];
    |        }
  > |        delete teams[_teamId].playersIds[teams[_teamId].playersIds.length-1];
    |        teams[_teamId].playersIds.length--;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |
    |    function _addOwnerPlayerToTeam(uint256 _teamId, address _owner, uint256 _playerId, uint256 _position) internal {
  > |        teams[_teamId].playersIds.push(_playerId);
    |        teams[_teamId].countPositions[_position] += 1;
    |        mapOwnerTeam[_owner] = _teamId;
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |pragma solidity ^0.4.16;
    |
  > |contract PlayerToken {
    |    function totalSupply() public view returns (uint256 total);
    |    function balanceOf(address _owner) public view returns (uint balance);
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |
    |    function setPause(bool _pause) external onlyC {
  > |        pause = _pause;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |
    |
  > |contract Team is FMWorldAccessControl
    |{
    |    struct TeamStruct {
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |
    |    function setPlayerTokenAddress(address _playerTokenAddress) public onlyCEO {
  > |        playerTokenAddress = _playerTokenAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |
    |    function setCountPlayersInPosition(uint256 _countPlayersInPosition) public onlyCEO {
  > |        countPlayersInPosition = _countPlayersInPosition;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |    function _addOwnerPlayerToTeam(uint256 _teamId, address _owner, uint256 _playerId, uint256 _position) internal {
    |        teams[_teamId].playersIds.push(_playerId);
  > |        teams[_teamId].countPositions[_position] += 1;
    |        mapOwnerTeam[_owner] = _teamId;
    |        mapPlayerTeam[_playerId] = _teamId;
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |        teams[_teamId].playersIds.push(_playerId);
    |        teams[_teamId].countPositions[_position] += 1;
  > |        mapOwnerTeam[_owner] = _teamId;
    |        mapPlayerTeam[_playerId] = _teamId;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |        teams[_teamId].countPositions[_position] += 1;
    |        mapOwnerTeam[_owner] = _teamId;
  > |        mapPlayerTeam[_playerId] = _teamId;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
    |
  > |        delete mapPlayerTeam[_playerId];
    |        //
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'Team':
    |        //
    |
  > |        teams[_teamId].countPositions[_position] -= 1;
    |        //
    |
  at /home/jiaming/mavs_srcs/contract@0xd6e1ad11dbcb329bfa1584a7958d1e65aa8ded41.sol(226)


