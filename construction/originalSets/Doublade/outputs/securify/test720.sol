Processing contract: /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol:SportStarToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SportStarToken':
    |
    |
  > |contract SportStarToken is ERC721 {
    |
    |    // ***** EVENTS
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'SportStarToken':
    |
    |
  > |contract SportStarToken is ERC721 {
    |
    |    // ***** EVENTS
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |    function _transfer(address _from, address _to, uint256 _tokenId) private {
    |        // Since the number of tokens is capped to 2^32 we can't overflow this
  > |        ownershipTokenCount[_to]++;
    |        //transfer ownership
    |        tokenIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        // When creating new tokens _from is 0x0, but we can't account that address.
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |            // clear any previously approved ownership exchange
    |            delete tokenIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |            ownershipTokenCount[_from]--;
    |            // clear any previously approved ownership exchange
  > |            delete tokenIndexToApproved[_tokenId];
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |
    |
  > |contract SportStarToken is ERC721 {
    |
    |    // ***** EVENTS
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        require(_newMasterContract != address(0));
    |
  > |        masterContractAddress = _newMasterContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        require(_owns(msg.sender, _tokenId));
    |
  > |        tokenIndexToApproved[_tokenId] = _to;
    |
    |        Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |
    |    function setTokenData(uint256 _tokenId, bytes32 tokenData) public onlyMasterContract {
  > |        tokenIndexToData[_tokenId] = tokenData;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        ownershipTokenCount[_to]++;
    |        //transfer ownership
  > |        tokenIndexToOwner[_tokenId] = _to;
    |
    |        // When creating new tokens _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x2dcd224a4c61489ff68717af79cc5553589ae74a.sol(298)


