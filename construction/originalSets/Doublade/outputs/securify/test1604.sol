Processing contract: /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol:CatalogPlayers
Processing contract: /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol:FMWorld
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol:FMWorldAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol:PlayerToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol:Team
[31mViolation[0m for DAOConstantGas in contract 'FMWorld':
    |            return false;
    |        }
  > |        msg.sender.transfer(balancesInternal[msg.sender]);
    |        balancesInternal[msg.sender] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(256)

[33mWarning[0m for DAOConstantGas in contract 'FMWorld':
    |        }
    |        deposits -= _amount;
  > |        _sendTo.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(228)

[33mWarning[0m for LockedEther in contract 'FMWorld':
    |
    |
  > |contract FMWorld is FMWorldAccessControl {
    |
    |    address public playerTokenAddress;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(100)

[33mWarning[0m for TODAmount in contract 'FMWorld':
    |        }
    |        deposits -= _amount;
  > |        _sendTo.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(228)

[33mWarning[0m for TODReceiver in contract 'FMWorld':
    |        }
    |        deposits -= _amount;
  > |        _sendTo.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(228)

[33mWarning[0m for TODReceiver in contract 'FMWorld':
    |            return false;
    |        }
  > |        msg.sender.transfer(balancesInternal[msg.sender]);
    |        balancesInternal[msg.sender] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(256)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        CatalogPlayers catalogPlayers = CatalogPlayers(catalogPlayersAddress);
    |
  > |        _price = catalogPlayers.getBoxPrice(_league, _position);
    |        
    |        balancesInternal[msg.sender] += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(153)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        balancesInternal[msg.sender] = balancesInternal[msg.sender] - _price;
    |
  > |        uint256 _classPlayerId = _getRandom(catalogPlayers.getLengthClassPlayers(_league, _position), lastPlayerOwner);
    |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(161)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |
    |        uint256 _classPlayerId = _getRandom(catalogPlayers.getLengthClassPlayers(_league, _position), lastPlayerOwner);
  > |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
    |        playerToken.createPlayer(skills, _position, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(162)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
  > |        playerToken.createPlayer(skills, _position, msg.sender);
    |        lastPlayerOwner = msg.sender;
    |        balanceForReward += msg.value / 2;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(164)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        balanceForReward += msg.value / 2;
    |        deposits += msg.value / 2;
  > |        catalogPlayers.incrementCountSales(_league, _position);
    |
    |        if (now - lastCalculationRewardTime > 24 * 60 * 60 && balanceForReward > 10 ether) {
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(168)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |    
    |    function _requireTalentSkills(uint256 _playerId, PlayerToken playerToken, uint256 _minTalent, uint256 _minSkills) internal view returns(bool) {
  > |        var (_talent, _tactics, _dribbling, _kick, _speed, _pass, _selection) = playerToken.getPlayer(_playerId);
    |        if ((_talent < _minTalent) || (_tactics + _dribbling + _kick + _speed + _pass + _selection < _minSkills)) return false; 
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(180)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
    |        Team team = Team(teamAddress);
  > |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(189)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        Team team = Team(teamAddress);
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
  > |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0);
    |        require(_requireTalentSkills(_playerId, playerToken, _minTalent, _minSkills));
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(190)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.getPlayerTeam(_playerId) == 0);
  > |        require(team.getOwnerTeam(msg.sender) == 0);
    |        require(_requireTalentSkills(_playerId, playerToken, _minTalent, _minSkills));
    |        team.createTeam(_name, _logo, _minTalent, _minSkills, msg.sender, _playerId);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(191)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        require(team.getOwnerTeam(msg.sender) == 0);
    |        require(_requireTalentSkills(_playerId, playerToken, _minTalent, _minSkills));
  > |        team.createTeam(_name, _logo, _minTalent, _minSkills, msg.sender, _playerId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(193)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
    |        Team team = Team(teamAddress);
  > |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.isTeam(_teamId));
    |        require(team.getPlayerTeam(_playerId) == 0);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(200)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        Team team = Team(teamAddress);
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
  > |        require(team.isTeam(_teamId));
    |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(201)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.isTeam(_teamId));
  > |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
    |        uint256 _position = playerToken.getPosition(_playerId);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(202)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        require(team.isTeam(_teamId));
    |        require(team.getPlayerTeam(_playerId) == 0);
  > |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
    |        uint256 _position = playerToken.getPosition(_playerId);
    |        require(team.getCountPosition(_teamId, _position) < team.countPlayersInPosition());
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(203)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
  > |        uint256 _position = playerToken.getPosition(_playerId);
    |        require(team.getCountPosition(_teamId, _position) < team.countPlayersInPosition());
    |        require(_requireTalentSkills(_playerId, playerToken, team.getMinTalent(_teamId), team.getMinSkills(_teamId)));
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(204)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
    |        uint256 _position = playerToken.getPosition(_playerId);
  > |        require(team.getCountPosition(_teamId, _position) < team.countPlayersInPosition());
    |        require(_requireTalentSkills(_playerId, playerToken, team.getMinTalent(_teamId), team.getMinSkills(_teamId)));
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(205)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        uint256 _position = playerToken.getPosition(_playerId);
    |        require(team.getCountPosition(_teamId, _position) < team.countPlayersInPosition());
  > |        require(_requireTalentSkills(_playerId, playerToken, team.getMinTalent(_teamId), team.getMinSkills(_teamId)));
    |
    |        _calcTeamBalance(_teamId, team, playerToken);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(206)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |
    |        _calcTeamBalance(_teamId, team, playerToken);
  > |        team.joinTeam(_teamId, msg.sender, _playerId, _position);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(209)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
    |        Team team = Team(teamAddress);
  > |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.getPlayerTeam(_playerId) == _teamId);
    |        _calcTeamBalance(_teamId, team, playerToken);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(216)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        Team team = Team(teamAddress);
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
  > |        require(team.getPlayerTeam(_playerId) == _teamId);
    |        _calcTeamBalance(_teamId, team, playerToken);
    |        uint256 _position = playerToken.getPosition(_playerId);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(217)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        require(team.getPlayerTeam(_playerId) == _teamId);
    |        _calcTeamBalance(_teamId, team, playerToken);
  > |        uint256 _position = playerToken.getPosition(_playerId);
    |        team.leaveTeam(_teamId, msg.sender, _playerId, _position);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(219)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        _calcTeamBalance(_teamId, team, playerToken);
    |        uint256 _position = playerToken.getPosition(_playerId);
  > |        team.leaveTeam(_teamId, msg.sender, _playerId, _position);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(220)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        }
    |        deposits -= _amount;
  > |        _sendTo.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(228)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |            return false;
    |        }
  > |        uint256 _countPlayers = team.getCountPlayersOfTeam(_teamId);
    |        for(uint256 i = 0; i < _countPlayers; i++) {
    |            uint256 _playerId = team.getPlayerIdOfIndex(_teamId, i);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(236)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        uint256 _countPlayers = team.getCountPlayersOfTeam(_teamId);
    |        for(uint256 i = 0; i < _countPlayers; i++) {
  > |            uint256 _playerId = team.getPlayerIdOfIndex(_teamId, i);
    |            address _owner = playerToken.ownerOf(_playerId);
    |            balancesInternal[_owner] += balancesTeams[_teamId] / _countPlayers;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(238)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        for(uint256 i = 0; i < _countPlayers; i++) {
    |            uint256 _playerId = team.getPlayerIdOfIndex(_teamId, i);
  > |            address _owner = playerToken.ownerOf(_playerId);
    |            balancesInternal[_owner] += balancesTeams[_teamId] / _countPlayers;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(239)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |    function withdrawEther() external returns(bool) {
    |        Team team = Team(teamAddress);
  > |        uint256 _teamId = team.getOwnerTeam(msg.sender);
    |        if (balancesTeams[_teamId] > 0) {
    |            PlayerToken playerToken = PlayerToken(playerTokenAddress);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(248)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |            return false;
    |        }
  > |        msg.sender.transfer(balancesInternal[msg.sender]);
    |        balancesInternal[msg.sender] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(256)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        CatalogPlayers catalogPlayers = CatalogPlayers(catalogPlayersAddress);
    |
  > |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
    |        playerToken.createPlayer(skills, _position, _toAddress);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(267)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
  > |        playerToken.createPlayer(skills, _position, _toAddress);
    |        countPartnerPlayers++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(269)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |    function calculationTeamsRewards(uint256[] orderTeamsIds) public onlyC {
    |        Team team = Team(teamAddress);
  > |        if (team.getCountTeams() < 50) {
    |            lastCalculationRewardTime = now;
    |            calculatedReward = true;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(275)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        }
    |        
  > |        if (orderTeamsIds.length != team.getCountTeams()) { 
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(281)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        
    |        for(uint256 teamIndex = 0; teamIndex < orderTeamsIds.length - 1; teamIndex++) {
  > |            if (team.getTeamSumSkills(orderTeamsIds[teamIndex]) < team.getTeamSumSkills(orderTeamsIds[teamIndex + 1])) {
    |                revert();
    |            }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(286)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |    function getBalanceTeam(address _owner) public view returns(uint256 balanceTeam) {
    |        Team team = Team(teamAddress);
  > |        uint256 _teamId = team.getOwnerTeam(_owner);
    |        if (_teamId == 0) {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(322)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |            return 0;
    |        }
  > |        uint256 _countPlayersOwner = team.getCountPlayersOfOwner(_teamId, _owner);
    |        uint256 _countPlayers = team.getCountPlayersOfTeam(_teamId);
    |        balanceTeam = balancesTeams[_teamId] / _countPlayers * _countPlayersOwner;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(326)

[33mWarning[0m for UnhandledException in contract 'FMWorld':
    |        }
    |        uint256 _countPlayersOwner = team.getCountPlayersOfOwner(_teamId, _owner);
  > |        uint256 _countPlayers = team.getCountPlayersOfTeam(_teamId);
    |        balanceTeam = balancesTeams[_teamId] / _countPlayers * _countPlayersOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        CatalogPlayers catalogPlayers = CatalogPlayers(catalogPlayersAddress);
    |
  > |        _price = catalogPlayers.getBoxPrice(_league, _position);
    |        
    |        balancesInternal[msg.sender] += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(153)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        balancesInternal[msg.sender] = balancesInternal[msg.sender] - _price;
    |
  > |        uint256 _classPlayerId = _getRandom(catalogPlayers.getLengthClassPlayers(_league, _position), lastPlayerOwner);
    |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |
    |        uint256 _classPlayerId = _getRandom(catalogPlayers.getLengthClassPlayers(_league, _position), lastPlayerOwner);
  > |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
    |        playerToken.createPlayer(skills, _position, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
  > |        playerToken.createPlayer(skills, _position, msg.sender);
    |        lastPlayerOwner = msg.sender;
    |        balanceForReward += msg.value / 2;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        balanceForReward += msg.value / 2;
    |        deposits += msg.value / 2;
  > |        catalogPlayers.incrementCountSales(_league, _position);
    |
    |        if (now - lastCalculationRewardTime > 24 * 60 * 60 && balanceForReward > 10 ether) {
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |    
    |    function _requireTalentSkills(uint256 _playerId, PlayerToken playerToken, uint256 _minTalent, uint256 _minSkills) internal view returns(bool) {
  > |        var (_talent, _tactics, _dribbling, _kick, _speed, _pass, _selection) = playerToken.getPlayer(_playerId);
    |        if ((_talent < _minTalent) || (_tactics + _dribbling + _kick + _speed + _pass + _selection < _minSkills)) return false; 
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
    |        Team team = Team(teamAddress);
  > |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        Team team = Team(teamAddress);
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
  > |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0);
    |        require(_requireTalentSkills(_playerId, playerToken, _minTalent, _minSkills));
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.getPlayerTeam(_playerId) == 0);
  > |        require(team.getOwnerTeam(msg.sender) == 0);
    |        require(_requireTalentSkills(_playerId, playerToken, _minTalent, _minSkills));
    |        team.createTeam(_name, _logo, _minTalent, _minSkills, msg.sender, _playerId);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        require(team.getOwnerTeam(msg.sender) == 0);
    |        require(_requireTalentSkills(_playerId, playerToken, _minTalent, _minSkills));
  > |        team.createTeam(_name, _logo, _minTalent, _minSkills, msg.sender, _playerId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
    |        Team team = Team(teamAddress);
  > |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.isTeam(_teamId));
    |        require(team.getPlayerTeam(_playerId) == 0);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        Team team = Team(teamAddress);
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
  > |        require(team.isTeam(_teamId));
    |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.isTeam(_teamId));
  > |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
    |        uint256 _position = playerToken.getPosition(_playerId);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        require(team.isTeam(_teamId));
    |        require(team.getPlayerTeam(_playerId) == 0);
  > |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
    |        uint256 _position = playerToken.getPosition(_playerId);
    |        require(team.getCountPosition(_teamId, _position) < team.countPlayersInPosition());
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        require(team.getPlayerTeam(_playerId) == 0);
    |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
  > |        uint256 _position = playerToken.getPosition(_playerId);
    |        require(team.getCountPosition(_teamId, _position) < team.countPlayersInPosition());
    |        require(_requireTalentSkills(_playerId, playerToken, team.getMinTalent(_teamId), team.getMinSkills(_teamId)));
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        require(team.getOwnerTeam(msg.sender) == 0 || team.getOwnerTeam(msg.sender) == _teamId);
    |        uint256 _position = playerToken.getPosition(_playerId);
  > |        require(team.getCountPosition(_teamId, _position) < team.countPlayersInPosition());
    |        require(_requireTalentSkills(_playerId, playerToken, team.getMinTalent(_teamId), team.getMinSkills(_teamId)));
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        uint256 _position = playerToken.getPosition(_playerId);
    |        require(team.getCountPosition(_teamId, _position) < team.countPlayersInPosition());
  > |        require(_requireTalentSkills(_playerId, playerToken, team.getMinTalent(_teamId), team.getMinSkills(_teamId)));
    |
    |        _calcTeamBalance(_teamId, team, playerToken);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |
    |        _calcTeamBalance(_teamId, team, playerToken);
  > |        team.joinTeam(_teamId, msg.sender, _playerId, _position);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        PlayerToken playerToken = PlayerToken(playerTokenAddress);
    |        Team team = Team(teamAddress);
  > |        require(playerToken.ownerOf(_playerId) == msg.sender);
    |        require(team.getPlayerTeam(_playerId) == _teamId);
    |        _calcTeamBalance(_teamId, team, playerToken);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        Team team = Team(teamAddress);
    |        require(playerToken.ownerOf(_playerId) == msg.sender);
  > |        require(team.getPlayerTeam(_playerId) == _teamId);
    |        _calcTeamBalance(_teamId, team, playerToken);
    |        uint256 _position = playerToken.getPosition(_playerId);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        require(team.getPlayerTeam(_playerId) == _teamId);
    |        _calcTeamBalance(_teamId, team, playerToken);
  > |        uint256 _position = playerToken.getPosition(_playerId);
    |        team.leaveTeam(_teamId, msg.sender, _playerId, _position);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        _calcTeamBalance(_teamId, team, playerToken);
    |        uint256 _position = playerToken.getPosition(_playerId);
  > |        team.leaveTeam(_teamId, msg.sender, _playerId, _position);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |            return false;
    |        }
  > |        uint256 _countPlayers = team.getCountPlayersOfTeam(_teamId);
    |        for(uint256 i = 0; i < _countPlayers; i++) {
    |            uint256 _playerId = team.getPlayerIdOfIndex(_teamId, i);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(236)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        uint256 _countPlayers = team.getCountPlayersOfTeam(_teamId);
    |        for(uint256 i = 0; i < _countPlayers; i++) {
  > |            uint256 _playerId = team.getPlayerIdOfIndex(_teamId, i);
    |            address _owner = playerToken.ownerOf(_playerId);
    |            balancesInternal[_owner] += balancesTeams[_teamId] / _countPlayers;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        for(uint256 i = 0; i < _countPlayers; i++) {
    |            uint256 _playerId = team.getPlayerIdOfIndex(_teamId, i);
  > |            address _owner = playerToken.ownerOf(_playerId);
    |            balancesInternal[_owner] += balancesTeams[_teamId] / _countPlayers;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |    function withdrawEther() external returns(bool) {
    |        Team team = Team(teamAddress);
  > |        uint256 _teamId = team.getOwnerTeam(msg.sender);
    |        if (balancesTeams[_teamId] > 0) {
    |            PlayerToken playerToken = PlayerToken(playerTokenAddress);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        CatalogPlayers catalogPlayers = CatalogPlayers(catalogPlayersAddress);
    |
  > |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
    |        playerToken.createPlayer(skills, _position, _toAddress);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(267)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        uint32[7] memory skills = catalogPlayers.getClassPlayers(_league, _position, _classPlayerId);
    |
  > |        playerToken.createPlayer(skills, _position, _toAddress);
    |        countPartnerPlayers++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |    function calculationTeamsRewards(uint256[] orderTeamsIds) public onlyC {
    |        Team team = Team(teamAddress);
  > |        if (team.getCountTeams() < 50) {
    |            lastCalculationRewardTime = now;
    |            calculatedReward = true;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        }
    |        
  > |        if (orderTeamsIds.length != team.getCountTeams()) { 
    |            revert();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(281)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        
    |        for(uint256 teamIndex = 0; teamIndex < orderTeamsIds.length - 1; teamIndex++) {
  > |            if (team.getTeamSumSkills(orderTeamsIds[teamIndex]) < team.getTeamSumSkills(orderTeamsIds[teamIndex + 1])) {
    |                revert();
    |            }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |    function getBalanceTeam(address _owner) public view returns(uint256 balanceTeam) {
    |        Team team = Team(teamAddress);
  > |        uint256 _teamId = team.getOwnerTeam(_owner);
    |        if (_teamId == 0) {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |            return 0;
    |        }
  > |        uint256 _countPlayersOwner = team.getCountPlayersOfOwner(_teamId, _owner);
    |        uint256 _countPlayers = team.getCountPlayersOfTeam(_teamId);
    |        balanceTeam = balancesTeams[_teamId] / _countPlayers * _countPlayersOwner;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        }
    |        uint256 _countPlayersOwner = team.getCountPlayersOfOwner(_teamId, _owner);
  > |        uint256 _countPlayers = team.getCountPlayersOfTeam(_teamId);
    |        balanceTeam = balancesTeams[_teamId] / _countPlayers * _countPlayersOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(327)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FMWorld':
    |        }
    |        deposits -= _amount;
  > |        _sendTo.transfer(_amount);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'FMWorld':
    |
    |        playerToken.createPlayer(skills, _position, msg.sender);
  > |        lastPlayerOwner = msg.sender;
    |        balanceForReward += msg.value / 2;
    |        deposits += msg.value / 2;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'FMWorld':
    |        playerToken.createPlayer(skills, _position, msg.sender);
    |        lastPlayerOwner = msg.sender;
  > |        balanceForReward += msg.value / 2;
    |        deposits += msg.value / 2;
    |        catalogPlayers.incrementCountSales(_league, _position);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'FMWorld':
    |        lastPlayerOwner = msg.sender;
    |        balanceForReward += msg.value / 2;
  > |        deposits += msg.value / 2;
    |        catalogPlayers.incrementCountSales(_league, _position);
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'FMWorld':
    |
    |        if (now - lastCalculationRewardTime > 24 * 60 * 60 && balanceForReward > 10 ether) {
  > |            calculatedReward = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(171)

[31mViolation[0m for UnrestrictedWrite in contract 'FMWorld':
    |
    |        playerToken.createPlayer(skills, _position, _toAddress);
  > |        countPartnerPlayers++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'FMWorld':
    |            else if (i >= 13 && i <= 30) { k = 100; }
    |            else if (i >= 31) { k = 50; }
  > |            balancesTeams[orderTeamsIds[i - 1]] = balanceForReward * k / 10000;
    |        }
    |        balanceForReward = 0;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'FMWorld':
    |            balancesTeams[orderTeamsIds[i - 1]] = balanceForReward * k / 10000;
    |        }
  > |        balanceForReward = 0;
    |        lastCalculationRewardTime = now;
    |        calculatedReward = true;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(304)

[31mViolation[0m for UnrestrictedWrite in contract 'FMWorld':
    |        }
    |        balanceForReward = 0;
  > |        lastCalculationRewardTime = now;
    |        calculatedReward = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'FMWorld':
    |        balanceForReward = 0;
    |        lastCalculationRewardTime = now;
  > |        calculatedReward = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |        _price = catalogPlayers.getBoxPrice(_league, _position);
    |        
  > |        balancesInternal[msg.sender] += msg.value;
    |        if (balancesInternal[msg.sender] < _price) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |            revert();
    |        }
  > |        balancesInternal[msg.sender] = balancesInternal[msg.sender] - _price;
    |
    |        uint256 _classPlayerId = _getRandom(catalogPlayers.getLengthClassPlayers(_league, _position), lastPlayerOwner);
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |        }
    |        msg.sender.transfer(balancesInternal[msg.sender]);
  > |        balancesInternal[msg.sender] = 0;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |
    |    function setPause(bool _pause) external onlyC {
  > |        pause = _pause;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |
    |    function setPlayerTokenAddress(address _playerTokenAddress) public onlyCEO {
  > |        playerTokenAddress = _playerTokenAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |
    |    function setCatalogPlayersAddress(address _catalogPlayersAddress) public onlyCEO {
  > |        catalogPlayersAddress = _catalogPlayersAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |
    |    function setTeamAddress(address _teamAddress) public onlyCEO {
  > |        teamAddress = _teamAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |            return false;
    |        }
  > |        deposits -= _amount;
    |        _sendTo.transfer(_amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |        Team team = Team(teamAddress);
    |        if (team.getCountTeams() < 50) {
  > |            lastCalculationRewardTime = now;
    |            calculatedReward = true;
    |            return;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorld':
    |        if (team.getCountTeams() < 50) {
    |            lastCalculationRewardTime = now;
  > |            calculatedReward = true;
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(277)

[33mWarning[0m for LockedEther in contract 'FMWorldAccessControl':
    |}
    |
  > |contract FMWorldAccessControl {
    |    address public ceoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |
    |
  > |    function setPause(bool _pause) external onlyC {
    |        pause = _pause;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |
    |contract FMWorldAccessControl {
  > |    address public ceoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |contract FMWorldAccessControl {
    |    address public ceoAddress;
  > |    address public cooAddress;
    |
    |    bool public pause = false;
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    address public cooAddress;
    |
  > |    bool public pause = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |
    |    function setPause(bool _pause) external onlyC {
  > |        pause = _pause;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x65f3f1a2e66323a17d7f177db86bb326071e87f9.sol(93)


