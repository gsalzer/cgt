Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:Azimuth
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:Claims
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:ERC165
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:ERC721Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:ERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:ERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:Ecliptic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:EclipticBase
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:PlanetSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:Polls
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:ReadsAzimuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:SafeMath16
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:SafeMath8
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol:SupportsInterfaceWithLookup
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressUtils':
    | * Utility library of inline functions on addresses
    | */
  > |library AddressUtils {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2638)

[31mViolation[0m for LockedEther in contract 'Azimuth':
    |//    This contract will be owned by the Ecliptic contract.
    |//
  > |contract Azimuth is Ownable
    |{
    |//
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'Azimuth':
    |//    This contract will be owned by the Ecliptic contract.
    |//
  > |contract Azimuth is Ownable
    |{
    |//
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |
    |/**
  > | * @title ERC165
    | * @dev https://github.com/ethereum/EIPs/blob/master/EIPS/eip-165.md
    | */
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |//    This contract will be owned by the Ecliptic contract.
    |//
  > |contract Azimuth is Ownable
    |{
    |//
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      Point storage point = points[_point];
    |      require(!point.active);
  > |      point.active = true;
    |      registerSponsor(_point, true, getPrefix(_point));
    |      emit Activated(_point);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(639)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      }
    |
  > |      point.encryptionKey = _encryptionKey;
    |      point.authenticationKey = _authenticationKey;
    |      point.cryptoSuiteVersion = _cryptoSuiteVersion;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(662)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |
    |      point.encryptionKey = _encryptionKey;
  > |      point.authenticationKey = _authenticationKey;
    |      point.cryptoSuiteVersion = _cryptoSuiteVersion;
    |      point.keyRevisionNumber++;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(663)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      point.encryptionKey = _encryptionKey;
    |      point.authenticationKey = _authenticationKey;
  > |      point.cryptoSuiteVersion = _cryptoSuiteVersion;
    |      point.keyRevisionNumber++;
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(664)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      point.authenticationKey = _authenticationKey;
    |      point.cryptoSuiteVersion = _cryptoSuiteVersion;
  > |      point.keyRevisionNumber++;
    |
    |      emit ChangedKeys(_point,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(665)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |    {
    |      Point storage point = points[_point];
  > |      point.continuityNumber++;
    |      emit BrokeContinuity(_point, point.continuityNumber);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(681)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      //  register a new spawned point for the prefix
    |      //
  > |      points[prefix].spawned.push(_point);
    |      emit Spawned(prefix, _point);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(701)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint256 last = prevSponsoring.length - 1;
    |        uint32 moved = prevSponsoring[last];
  > |        prevSponsoring[i] = moved;
    |        sponsoringIndexes[prev][moved] = i + 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(837)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32 moved = prevSponsoring[last];
    |        prevSponsoring[i] = moved;
  > |        sponsoringIndexes[prev][moved] = i + 1;
    |
    |        //  delete the last item
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(838)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        //  delete the last item
    |        //
  > |        delete(prevSponsoring[last]);
    |        prevSponsoring.length = last;
    |        sponsoringIndexes[prev][_point] = 0;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(842)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        delete(prevSponsoring[last]);
    |        prevSponsoring.length = last;
  > |        sponsoringIndexes[prev][_point] = 0;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(844)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      {
    |        uint32[] storage newSponsoring = sponsoring[_sponsor];
  > |        newSponsoring.push(_point);
    |        sponsoringIndexes[_sponsor][_point] = newSponsoring.length;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(850)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32[] storage newSponsoring = sponsoring[_sponsor];
    |        newSponsoring.push(_point);
  > |        sponsoringIndexes[_sponsor][_point] = newSponsoring.length;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(851)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      }
    |
  > |      point.sponsor = _sponsor;
    |      point.hasSponsor = _hasSponsor;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(854)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |
    |      point.sponsor = _sponsor;
  > |      point.hasSponsor = _hasSponsor;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(855)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint256 last = prevRequests.length - 1;
    |        uint32 moved = prevRequests[last];
  > |        prevRequests[i] = moved;
    |        escapeRequestsIndexes[prev][moved] = i + 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(900)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32 moved = prevRequests[last];
    |        prevRequests[i] = moved;
  > |        escapeRequestsIndexes[prev][moved] = i + 1;
    |
    |        //  delete the last item
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(901)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        //  delete the last item
    |        //
  > |        delete(prevRequests[last]);
    |        prevRequests.length = last;
    |        escapeRequestsIndexes[prev][_point] = 0;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(905)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        delete(prevRequests[last]);
    |        prevRequests.length = last;
  > |        escapeRequestsIndexes[prev][_point] = 0;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(907)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      {
    |        uint32[] storage newRequests = escapeRequests[_sponsor];
  > |        newRequests.push(_point);
    |        escapeRequestsIndexes[_sponsor][_point] = newRequests.length;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(913)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32[] storage newRequests = escapeRequests[_sponsor];
    |        newRequests.push(_point);
  > |        escapeRequestsIndexes[_sponsor][_point] = newRequests.length;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(914)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      }
    |
  > |      point.escapeRequestedTo = _sponsor;
    |      point.escapeRequested = _isEscaping;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(917)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |
    |      point.escapeRequestedTo = _sponsor;
  > |      point.escapeRequested = _isEscaping;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(918)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint256 last = owner.length - 1;
    |        uint32 moved = owner[last];
  > |        owner[i] = moved;
    |        pointOwnerIndexes[prev][moved] = i + 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1281)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32 moved = owner[last];
    |        owner[i] = moved;
  > |        pointOwnerIndexes[prev][moved] = i + 1;
    |
    |        //  delete the last item
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1282)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        //  delete the last item
    |        //
  > |        delete(owner[last]);
    |        owner.length = last;
    |        pointOwnerIndexes[prev][_point] = 0;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1286)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        delete(owner[last]);
    |        owner.length = last;
  > |        pointOwnerIndexes[prev][_point] = 0;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1288)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      //  update the owner list and the owner's index list
    |      //
  > |      rights[_point].owner = _owner;
    |      pointsOwnedBy[_owner].push(_point);
    |      pointOwnerIndexes[_owner][_point] = pointsOwnedBy[_owner].length;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1293)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      //
    |      rights[_point].owner = _owner;
  > |      pointsOwnedBy[_owner].push(_point);
    |      pointOwnerIndexes[_owner][_point] = pointsOwnedBy[_owner].length;
    |      emit OwnerChanged(_point, _owner);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1294)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      rights[_point].owner = _owner;
    |      pointsOwnedBy[_owner].push(_point);
  > |      pointOwnerIndexes[_owner][_point] = pointsOwnedBy[_owner].length;
    |      emit OwnerChanged(_point, _owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1295)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint256 last = prevMfor.length - 1;
    |        uint32 moved = prevMfor[last];
  > |        prevMfor[i] = moved;
    |        managerForIndexes[prev][moved] = i + 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1333)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32 moved = prevMfor[last];
    |        prevMfor[i] = moved;
  > |        managerForIndexes[prev][moved] = i + 1;
    |
    |        //  delete the last item
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1334)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        //  delete the last item
    |        //
  > |        delete(prevMfor[last]);
    |        prevMfor.length = last;
    |        managerForIndexes[prev][_point] = 0;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1338)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        delete(prevMfor[last]);
    |        prevMfor.length = last;
  > |        managerForIndexes[prev][_point] = 0;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1340)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      {
    |        uint32[] storage mfor = managerFor[_proxy];
  > |        mfor.push(_point);
    |        managerForIndexes[_proxy][_point] = mfor.length;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1346)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32[] storage mfor = managerFor[_proxy];
    |        mfor.push(_point);
  > |        managerForIndexes[_proxy][_point] = mfor.length;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1347)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      }
    |
  > |      deed.managementProxy = _proxy;
    |      emit ChangedManagementProxy(_point, _proxy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1350)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint256 last = prevSfor.length - 1;
    |        uint32 moved = prevSfor[last];
  > |        prevSfor[i] = moved;
    |        spawningForIndexes[prev][moved] = i + 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1388)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32 moved = prevSfor[last];
    |        prevSfor[i] = moved;
  > |        spawningForIndexes[prev][moved] = i + 1;
    |
    |        //  delete the last item
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1389)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        //  delete the last item
    |        //
  > |        delete(prevSfor[last]);
    |        prevSfor.length = last;
    |        spawningForIndexes[prev][_point] = 0;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1393)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        delete(prevSfor[last]);
    |        prevSfor.length = last;
  > |        spawningForIndexes[prev][_point] = 0;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1395)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      {
    |        uint32[] storage sfor = spawningFor[_proxy];
  > |        sfor.push(_point);
    |        spawningForIndexes[_proxy][_point] = sfor.length;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1401)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32[] storage sfor = spawningFor[_proxy];
    |        sfor.push(_point);
  > |        spawningForIndexes[_proxy][_point] = sfor.length;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1402)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      }
    |
  > |      deed.spawnProxy = _proxy;
    |      emit ChangedSpawnProxy(_point, _proxy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1405)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint256 last = prevVfor.length - 1;
    |        uint32 moved = prevVfor[last];
  > |        prevVfor[i] = moved;
    |        votingForIndexes[prev][moved] = i + 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1444)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32 moved = prevVfor[last];
    |        prevVfor[i] = moved;
  > |        votingForIndexes[prev][moved] = i + 1;
    |
    |        //  delete the last item
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1445)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        //  delete the last item
    |        //
  > |        delete(prevVfor[last]);
    |        prevVfor.length = last;
    |        votingForIndexes[prev][_point] = 0;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1449)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        delete(prevVfor[last]);
    |        prevVfor.length = last;
  > |        votingForIndexes[prev][_point] = 0;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1451)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      {
    |        uint32[] storage vfor = votingFor[_proxy];
  > |        vfor.push(_point);
    |        votingForIndexes[_proxy][_point] = vfor.length;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1457)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32[] storage vfor = votingFor[_proxy];
    |        vfor.push(_point);
  > |        votingForIndexes[_proxy][_point] = vfor.length;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1458)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      }
    |
  > |      deed.votingProxy = _proxy;
    |      emit ChangedVotingProxy(_point, _proxy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1461)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint256 last = prevTfor.length - 1;
    |        uint32 moved = prevTfor[last];
  > |        prevTfor[i] = moved;
    |        transferringForIndexes[prev][moved] = i + 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1499)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32 moved = prevTfor[last];
    |        prevTfor[i] = moved;
  > |        transferringForIndexes[prev][moved] = i + 1;
    |
    |        //  delete the last item
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1500)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        //  delete the last item
    |        //
  > |        delete(prevTfor[last]);
    |        prevTfor.length = last;
    |        transferringForIndexes[prev][_point] = 0;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1504)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        delete(prevTfor[last]);
    |        prevTfor.length = last;
  > |        transferringForIndexes[prev][_point] = 0;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1506)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      {
    |        uint32[] storage tfor = transferringFor[_proxy];
  > |        tfor.push(_point);
    |        transferringForIndexes[_proxy][_point] = tfor.length;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1512)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |        uint32[] storage tfor = transferringFor[_proxy];
    |        tfor.push(_point);
  > |        transferringForIndexes[_proxy][_point] = tfor.length;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1513)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      }
    |
  > |      deed.transferProxy = _proxy;
    |      emit ChangedTransferProxy(_point, _proxy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1516)

[33mWarning[0m for UnrestrictedWrite in contract 'Azimuth':
    |      external
    |    {
  > |      operators[_owner][_operator] = _approved;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1529)

[31mViolation[0m for LockedEther in contract 'Claims':
    |//    you on-transfer.
    |//
  > |contract Claims is ReadsAzimuth
    |{
    |  //  ClaimAdded: a claim was added by :by
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2230)

[33mWarning[0m for UnhandledException in contract 'Claims':
    |  modifier activePointManager(uint32 _point)
    |  {
  > |    require( azimuth.canManage(_point, msg.sender) &&
    |             azimuth.isActive(_point) );
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1569)

[33mWarning[0m for UnhandledException in contract 'Claims':
    |  {
    |    require( azimuth.canManage(_point, msg.sender) &&
  > |             azimuth.isActive(_point) );
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1570)

[33mWarning[0m for UnhandledException in contract 'Claims':
    |    //    to its relation to Ecliptic's transferPoint().
    |    //
  > |    require( azimuth.canManage(_point, msg.sender) ||
    |             ( msg.sender == azimuth.owner() ) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2346)

[33mWarning[0m for UnhandledException in contract 'Claims':
    |    //
    |    require( azimuth.canManage(_point, msg.sender) ||
  > |             ( msg.sender == azimuth.owner() ) );
    |
    |    Claim[maxClaims] storage currClaims = claims[_point];
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Claims':
    |  modifier activePointManager(uint32 _point)
    |  {
  > |    require( azimuth.canManage(_point, msg.sender) &&
    |             azimuth.isActive(_point) );
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1569)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Claims':
    |  {
    |    require( azimuth.canManage(_point, msg.sender) &&
  > |             azimuth.isActive(_point) );
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1570)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Claims':
    |    //    to its relation to Ecliptic's transferPoint().
    |    //
  > |    require( azimuth.canManage(_point, msg.sender) ||
    |             ( msg.sender == azimuth.owner() ) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Claims':
    |    //
    |    require( azimuth.canManage(_point, msg.sender) ||
  > |             ( msg.sender == azimuth.owner() ) );
    |
    |    Claim[maxClaims] storage currClaims = claims[_point];
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2347)

[33mWarning[0m for LockedEther in contract 'Ecliptic':
    |//    standard. It also implements ERC165 to allow this to be discovered.
    |//
  > |contract Ecliptic is EclipticBase, SupportsInterfaceWithLookup, ERC721Metadata
    |{
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2752)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |  modifier activePointOwner(uint32 _point)
    |  {
  > |    require( azimuth.isOwner(_point, msg.sender) &&
    |             azimuth.isActive(_point) );
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1559)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |  {
    |    require( azimuth.isOwner(_point, msg.sender) &&
  > |             azimuth.isActive(_point) );
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1560)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |  modifier activePointManager(uint32 _point)
    |  {
  > |    require( azimuth.canManage(_point, msg.sender) &&
    |             azimuth.isActive(_point) );
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1569)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |  {
    |    require( azimuth.canManage(_point, msg.sender) &&
  > |             azimuth.isActive(_point) );
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1570)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    //
    |    require( msg.sender == previousEcliptic &&
  > |             this == azimuth.owner() &&
    |             this == polls.owner() );
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2179)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    require( msg.sender == previousEcliptic &&
    |             this == azimuth.owner() &&
  > |             this == polls.owner() );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2180)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    //  transfer ownership of the data contracts
    |    //
  > |    azimuth.transferOwnership(_new);
    |    polls.transferOwnership(_new);
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2194)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    //
    |    azimuth.transferOwnership(_new);
  > |    polls.transferOwnership(_new);
    |
    |    //  trigger upgrade logic on the target contract
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2195)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    //  trigger upgrade logic on the target contract
    |    //
  > |    _new.onUpgrade();
    |
    |    //  emit event and destroy this contract
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2199)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    {
    |      require(0x0 != _owner);
  > |      return azimuth.getOwnedPointCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2821)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  active points always have a valid owner.
    |      //
  > |      require(azimuth.isActive(id));
    |
    |      return azimuth.getOwner(id);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2837)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      require(azimuth.isActive(id));
    |
  > |      return azimuth.getOwner(id);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2839)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    {
    |      return ( (_tokenId < 0x100000000) &&
  > |               azimuth.isActive(uint32(_tokenId)) );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2850)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    {
    |      uint32 id = uint32(_tokenId);
  > |      require(azimuth.isOwner(id, _from));
    |
    |      //  the ERC721 operator/approved address (if any) is
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2895)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    {
    |      require(0x0 != _operator);
  > |      azimuth.setOperator(msg.sender, _operator, _approved);
    |      emit ApprovalForAll(msg.sender, _operator, _approved);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2921)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //      inactive points
    |      //
  > |      require(azimuth.isActive(uint32(_tokenId)));
    |      return azimuth.getTransferProxy(uint32(_tokenId));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2936)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //
    |      require(azimuth.isActive(uint32(_tokenId)));
  > |      return azimuth.getTransferProxy(uint32(_tokenId));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2937)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      returns (bool result)
    |    {
  > |      return azimuth.isOperator(_owner, _operator);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2948)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      if (_discontinuous)
    |      {
  > |        azimuth.incrementContinuityNumber(_point);
    |      }
    |      azimuth.setKeys(_point,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3016)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        azimuth.incrementContinuityNumber(_point);
    |      }
  > |      azimuth.setKeys(_point,
    |                      _encryptionKey,
    |                      _authenticationKey,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3018)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  only currently unowned (and thus also inactive) points can be spawned
    |      //
  > |      require(azimuth.isOwner(_point, 0x0));
    |
    |      //  prefix: half-width prefix of _point
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3042)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  prefix: half-width prefix of _point
    |      //
  > |      uint16 prefix = azimuth.getPrefix(_point);
    |
    |      //  only allow spawning of points of the size directly below the prefix
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3046)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //    0x0001.0000 - the first planet of galaxy zero
    |      //
  > |      require( (uint8(azimuth.getPointSize(prefix)) + 1) ==
    |               uint8(azimuth.getPointSize(_point)) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3059)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //
    |      require( (uint8(azimuth.getPointSize(prefix)) + 1) ==
  > |               uint8(azimuth.getPointSize(_point)) );
    |
    |      //  prefix point must be linked and able to spawn
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3060)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  prefix point must be linked and able to spawn
    |      //
  > |      require( (azimuth.hasBeenLinked(prefix)) &&
    |               ( azimuth.getSpawnCount(prefix) <
    |                 getSpawnLimit(prefix, block.timestamp) ) );
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3064)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //
    |      require( (azimuth.hasBeenLinked(prefix)) &&
  > |               ( azimuth.getSpawnCount(prefix) <
    |                 getSpawnLimit(prefix, block.timestamp) ) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3065)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  of "spawnProxy" in the Azimuth contract)
    |      //
  > |      require( azimuth.canSpawnAs(prefix, msg.sender) );
    |
    |      //  if the caller is spawning the point to themselves,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3072)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      else
    |      {
  > |        doSpawn(_point, _target, false, azimuth.getOwner(prefix));
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3087)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  register the spawn for _point's prefix, incrementing spawn count
    |      //
  > |      azimuth.registerSpawned(_point);
    |
    |      //  if the spawn is _direct, assume _target knows what they're doing
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3104)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //  make the point active and set its new owner
    |        //
  > |        azimuth.activatePoint(_point);
    |        azimuth.setOwner(_point, _target);
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3113)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //
    |        azimuth.activatePoint(_point);
  > |        azimuth.setOwner(_point, _target);
    |
    |        emit Transfer(0x0, _target, uint256(_point));
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3114)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //  ownership of it
    |        //
  > |        azimuth.setOwner(_point, _holder);
    |        azimuth.setTransferProxy(_point, _target);
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3131)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //
    |        azimuth.setOwner(_point, _holder);
  > |        azimuth.setTransferProxy(_point, _target);
    |
    |        emit Transfer(0x0, _holder, uint256(_point));
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3132)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  an operator for the current owner, or the _point's transfer proxy
    |      //
  > |      require(azimuth.canTransfer(_point, msg.sender));
    |
    |      //  if the point wasn't active yet, that means transferring it
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3157)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  is part of the "spawn" flow, so we need to activate it
    |      //
  > |      if ( !azimuth.isActive(_point) )
    |      {
    |        azimuth.activatePoint(_point);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3162)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      if ( !azimuth.isActive(_point) )
    |      {
  > |        azimuth.activatePoint(_point);
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3164)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //    prefix owner wants to activate a spawned but untransferred child.
    |      //
  > |      if ( !azimuth.isOwner(_point, _target) )
    |      {
    |        //  remember the previous owner, to be included in the Transfer event
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3172)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //  remember the previous owner, to be included in the Transfer event
    |        //
  > |        address old = azimuth.getOwner(_point);
    |
    |        azimuth.setOwner(_point, _target);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3176)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        address old = azimuth.getOwner(_point);
    |
  > |        azimuth.setOwner(_point, _target);
    |
    |        //  according to ERC721, the approved address (here, transfer proxy)
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3178)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //  gets cleared during every Transfer event
    |        //
  > |        azimuth.setTransferProxy(_point, 0);
    |
    |        emit Transfer(old, _target, uint256(_point));
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3183)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //  but only if the point has already been linked
    |        //
  > |        if ( azimuth.hasBeenLinked(_point) )
    |        {
    |          azimuth.incrementContinuityNumber(_point);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3196)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        if ( azimuth.hasBeenLinked(_point) )
    |        {
  > |          azimuth.incrementContinuityNumber(_point);
    |          azimuth.setKeys(_point, 0, 0, 0);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3198)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        {
    |          azimuth.incrementContinuityNumber(_point);
  > |          azimuth.setKeys(_point, 0, 0, 0);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3199)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //  clear management proxy
    |        //
  > |        azimuth.setManagementProxy(_point, 0);
    |
    |        //  clear voting proxy
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3204)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //  clear voting proxy
    |        //
  > |        azimuth.setVotingProxy(_point, 0);
    |
    |        //  clear transfer proxy
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3208)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //    doing it a second time is a no-op in Azimuth.
    |        //
  > |        azimuth.setTransferProxy(_point, 0);
    |
    |        //  clear spawning proxy
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3217)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //  clear spawning proxy
    |        //
  > |        azimuth.setSpawnProxy(_point, 0);
    |
    |        //  clear claims
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3221)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |        //  clear claims
    |        //
  > |        claims.clearClaims(_point);
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3225)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    {
    |      require(canEscapeTo(_point, _sponsor));
  > |      azimuth.setEscapeRequest(_point, _sponsor);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3243)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      activePointManager(_point)
    |    {
  > |      azimuth.cancelEscape(_point);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3252)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      external
    |    {
  > |      require( azimuth.isEscaping(_point) &&
    |               azimuth.canManage( azimuth.getEscapeRequest(_point),
    |                                  msg.sender ) );
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3264)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    {
    |      require( azimuth.isEscaping(_point) &&
  > |               azimuth.canManage( azimuth.getEscapeRequest(_point),
    |                                  msg.sender ) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3265)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  its escape request is reset to "not escaping"
    |      //
  > |      azimuth.doEscape(_point);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3271)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      external
    |    {
  > |      require( azimuth.isEscaping(_point) &&
    |               azimuth.canManage( azimuth.getEscapeRequest(_point),
    |                                  msg.sender ) );
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3283)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    {
    |      require( azimuth.isEscaping(_point) &&
  > |               azimuth.canManage( azimuth.getEscapeRequest(_point),
    |                                  msg.sender ) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3284)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  reset the _point's escape request to "not escaping"
    |      //
  > |      azimuth.cancelEscape(_point);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3289)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      external
    |    {
  > |      require( azimuth.hasSponsor(_point) &&
    |               azimuth.canManage(azimuth.getSponsor(_point), msg.sender) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3301)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    {
    |      require( azimuth.hasSponsor(_point) &&
  > |               azimuth.canManage(azimuth.getSponsor(_point), msg.sender) );
    |
    |      //  signal that its sponsor no longer supports _point
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3302)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  signal that its sponsor no longer supports _point
    |      //
  > |      azimuth.loseSponsor(_point);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3306)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      returns (uint32 limit)
    |    {
  > |      Azimuth.Size size = azimuth.getPointSize(_point);
    |
    |      if ( size == Azimuth.Size.Galaxy )
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3321)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  can't escape to a sponsor that hasn't been linked
    |      //
  > |      if ( !azimuth.hasBeenLinked(_sponsor) ) return false;
    |
    |      //  Can only escape to a point one size higher than ourselves,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3362)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  star sponsors eventually.
    |      //
  > |      Azimuth.Size pointSize = azimuth.getPointSize(_point);
    |      Azimuth.Size sponsorSize = azimuth.getPointSize(_sponsor);
    |      return ( //  normal hierarchical escape structure
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3383)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //
    |      Azimuth.Size pointSize = azimuth.getPointSize(_point);
  > |      Azimuth.Size sponsorSize = azimuth.getPointSize(_sponsor);
    |      return ( //  normal hierarchical escape structure
    |               //
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3384)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |                 //  yet, because it's only for lightweight invitation chains
    |                 //
  > |                 !azimuth.hasBeenLinked(_point) ) );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3396)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      activePointOwner(_point)
    |    {
  > |      azimuth.setManagementProxy(_point, _manager);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3413)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      activePointOwner(_prefix)
    |    {
  > |      azimuth.setSpawnProxy(_prefix, _spawnProxy);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3423)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      activePointOwner(_galaxy)
    |    {
  > |      azimuth.setVotingProxy(_galaxy, _voter);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3435)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  owner: owner of _point
    |      //
  > |      address owner = azimuth.getOwner(_point);
    |
    |      //  caller must be :owner, or an operator designated by the owner.
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3449)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  caller must be :owner, or an operator designated by the owner.
    |      //
  > |      require((owner == msg.sender) || azimuth.isOperator(owner, msg.sender));
    |
    |      //  set transfer proxy field in Azimuth contract
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3453)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  set transfer proxy field in Azimuth contract
    |      //
  > |      azimuth.setTransferProxy(_point, _transferProxy);
    |
    |      //  emit Approval event
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3457)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  ensure that the upgrade target expects this contract as the source
    |      //
  > |      require(_proposal.previousEcliptic() == address(this));
    |      polls.startUpgradePoll(_proposal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3482)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //
    |      require(_proposal.previousEcliptic() == address(this));
  > |      polls.startUpgradePoll(_proposal);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3483)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      activePointVoter(_galaxy)
    |    {
  > |      polls.startDocumentPoll(_proposal);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3495)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  majority: true if the vote resulted in a majority, false otherwise
    |      //
  > |      bool majority = polls.castUpgradeVote(_galaxy, _proposal, _vote);
    |
    |      //  if a majority is in favor of the upgrade, it happens as defined
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3514)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      activePointVoter(_galaxy)
    |    {
  > |      polls.castDocumentVote(_galaxy, _proposal, _vote);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3533)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  majority: true if the poll ended in a majority, false otherwise
    |      //
  > |      bool majority = polls.updateUpgradePoll(_proposal);
    |
    |      //  if a majority is in favor of the upgrade, it happens as defined
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3544)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      external
    |    {
  > |      polls.updateDocumentPoll(_proposal);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3563)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  created, and only to non-zero addresses
    |      //
  > |      require( azimuth.isOwner(_galaxy, 0x0) &&
    |               0x0 != _target );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3580)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      //  new galaxy means a new registered voter
    |      //
  > |      polls.incrementTotalVoters();
    |
    |      //  if the caller is sending the galaxy to themselves,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3585)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |      onlyOwner
    |    {
  > |      azimuth.setDnsDomains(_primary, _secondary, _tertiary);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3608)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    modifier activePointVoter(uint32 _point)
    |    {
  > |      require( azimuth.canVoteAs(_point, msg.sender) &&
    |               azimuth.isActive(_point) );
    |      _;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3628)

[33mWarning[0m for UnhandledException in contract 'Ecliptic':
    |    {
    |      require( azimuth.canVoteAs(_point, msg.sender) &&
  > |               azimuth.isActive(_point) );
    |      _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3629)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |  modifier activePointOwner(uint32 _point)
    |  {
  > |    require( azimuth.isOwner(_point, msg.sender) &&
    |             azimuth.isActive(_point) );
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1559)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |  {
    |    require( azimuth.isOwner(_point, msg.sender) &&
  > |             azimuth.isActive(_point) );
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |  modifier activePointManager(uint32 _point)
    |  {
  > |    require( azimuth.canManage(_point, msg.sender) &&
    |             azimuth.isActive(_point) );
    |    _;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1569)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |  {
    |    require( azimuth.canManage(_point, msg.sender) &&
  > |             azimuth.isActive(_point) );
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1570)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    //
    |    require( msg.sender == previousEcliptic &&
  > |             this == azimuth.owner() &&
    |             this == polls.owner() );
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    require( msg.sender == previousEcliptic &&
    |             this == azimuth.owner() &&
  > |             this == polls.owner() );
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    //  transfer ownership of the data contracts
    |    //
  > |    azimuth.transferOwnership(_new);
    |    polls.transferOwnership(_new);
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2194)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    //
    |    azimuth.transferOwnership(_new);
  > |    polls.transferOwnership(_new);
    |
    |    //  trigger upgrade logic on the target contract
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2195)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    //  trigger upgrade logic on the target contract
    |    //
  > |    _new.onUpgrade();
    |
    |    //  emit event and destroy this contract
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    {
    |      require(0x0 != _owner);
  > |      return azimuth.getOwnedPointCount(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2821)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  active points always have a valid owner.
    |      //
  > |      require(azimuth.isActive(id));
    |
    |      return azimuth.getOwner(id);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2837)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      require(azimuth.isActive(id));
    |
  > |      return azimuth.getOwner(id);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2839)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    {
    |      return ( (_tokenId < 0x100000000) &&
  > |               azimuth.isActive(uint32(_tokenId)) );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2850)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    {
    |      uint32 id = uint32(_tokenId);
  > |      require(azimuth.isOwner(id, _from));
    |
    |      //  the ERC721 operator/approved address (if any) is
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2895)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    {
    |      require(0x0 != _operator);
  > |      azimuth.setOperator(msg.sender, _operator, _approved);
    |      emit ApprovalForAll(msg.sender, _operator, _approved);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2921)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //      inactive points
    |      //
  > |      require(azimuth.isActive(uint32(_tokenId)));
    |      return azimuth.getTransferProxy(uint32(_tokenId));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2936)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //
    |      require(azimuth.isActive(uint32(_tokenId)));
  > |      return azimuth.getTransferProxy(uint32(_tokenId));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2937)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      returns (bool result)
    |    {
  > |      return azimuth.isOperator(_owner, _operator);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2948)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      if (_discontinuous)
    |      {
  > |        azimuth.incrementContinuityNumber(_point);
    |      }
    |      azimuth.setKeys(_point,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3016)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        azimuth.incrementContinuityNumber(_point);
    |      }
  > |      azimuth.setKeys(_point,
    |                      _encryptionKey,
    |                      _authenticationKey,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3018)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  only currently unowned (and thus also inactive) points can be spawned
    |      //
  > |      require(azimuth.isOwner(_point, 0x0));
    |
    |      //  prefix: half-width prefix of _point
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3042)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  prefix: half-width prefix of _point
    |      //
  > |      uint16 prefix = azimuth.getPrefix(_point);
    |
    |      //  only allow spawning of points of the size directly below the prefix
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3046)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //    0x0001.0000 - the first planet of galaxy zero
    |      //
  > |      require( (uint8(azimuth.getPointSize(prefix)) + 1) ==
    |               uint8(azimuth.getPointSize(_point)) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3059)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //
    |      require( (uint8(azimuth.getPointSize(prefix)) + 1) ==
  > |               uint8(azimuth.getPointSize(_point)) );
    |
    |      //  prefix point must be linked and able to spawn
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3060)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  prefix point must be linked and able to spawn
    |      //
  > |      require( (azimuth.hasBeenLinked(prefix)) &&
    |               ( azimuth.getSpawnCount(prefix) <
    |                 getSpawnLimit(prefix, block.timestamp) ) );
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3064)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //
    |      require( (azimuth.hasBeenLinked(prefix)) &&
  > |               ( azimuth.getSpawnCount(prefix) <
    |                 getSpawnLimit(prefix, block.timestamp) ) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3065)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  of "spawnProxy" in the Azimuth contract)
    |      //
  > |      require( azimuth.canSpawnAs(prefix, msg.sender) );
    |
    |      //  if the caller is spawning the point to themselves,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3072)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      else
    |      {
  > |        doSpawn(_point, _target, false, azimuth.getOwner(prefix));
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3087)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  register the spawn for _point's prefix, incrementing spawn count
    |      //
  > |      azimuth.registerSpawned(_point);
    |
    |      //  if the spawn is _direct, assume _target knows what they're doing
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //  make the point active and set its new owner
    |        //
  > |        azimuth.activatePoint(_point);
    |        azimuth.setOwner(_point, _target);
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //
    |        azimuth.activatePoint(_point);
  > |        azimuth.setOwner(_point, _target);
    |
    |        emit Transfer(0x0, _target, uint256(_point));
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //  ownership of it
    |        //
  > |        azimuth.setOwner(_point, _holder);
    |        azimuth.setTransferProxy(_point, _target);
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //
    |        azimuth.setOwner(_point, _holder);
  > |        azimuth.setTransferProxy(_point, _target);
    |
    |        emit Transfer(0x0, _holder, uint256(_point));
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  an operator for the current owner, or the _point's transfer proxy
    |      //
  > |      require(azimuth.canTransfer(_point, msg.sender));
    |
    |      //  if the point wasn't active yet, that means transferring it
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3157)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  is part of the "spawn" flow, so we need to activate it
    |      //
  > |      if ( !azimuth.isActive(_point) )
    |      {
    |        azimuth.activatePoint(_point);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3162)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      if ( !azimuth.isActive(_point) )
    |      {
  > |        azimuth.activatePoint(_point);
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //    prefix owner wants to activate a spawned but untransferred child.
    |      //
  > |      if ( !azimuth.isOwner(_point, _target) )
    |      {
    |        //  remember the previous owner, to be included in the Transfer event
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3172)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //  remember the previous owner, to be included in the Transfer event
    |        //
  > |        address old = azimuth.getOwner(_point);
    |
    |        azimuth.setOwner(_point, _target);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3176)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        address old = azimuth.getOwner(_point);
    |
  > |        azimuth.setOwner(_point, _target);
    |
    |        //  according to ERC721, the approved address (here, transfer proxy)
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3178)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //  gets cleared during every Transfer event
    |        //
  > |        azimuth.setTransferProxy(_point, 0);
    |
    |        emit Transfer(old, _target, uint256(_point));
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //  but only if the point has already been linked
    |        //
  > |        if ( azimuth.hasBeenLinked(_point) )
    |        {
    |          azimuth.incrementContinuityNumber(_point);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        if ( azimuth.hasBeenLinked(_point) )
    |        {
  > |          azimuth.incrementContinuityNumber(_point);
    |          azimuth.setKeys(_point, 0, 0, 0);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        {
    |          azimuth.incrementContinuityNumber(_point);
  > |          azimuth.setKeys(_point, 0, 0, 0);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //  clear management proxy
    |        //
  > |        azimuth.setManagementProxy(_point, 0);
    |
    |        //  clear voting proxy
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //  clear voting proxy
    |        //
  > |        azimuth.setVotingProxy(_point, 0);
    |
    |        //  clear transfer proxy
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3208)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //    doing it a second time is a no-op in Azimuth.
    |        //
  > |        azimuth.setTransferProxy(_point, 0);
    |
    |        //  clear spawning proxy
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //  clear spawning proxy
    |        //
  > |        azimuth.setSpawnProxy(_point, 0);
    |
    |        //  clear claims
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |        //  clear claims
    |        //
  > |        claims.clearClaims(_point);
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    {
    |      require(canEscapeTo(_point, _sponsor));
  > |      azimuth.setEscapeRequest(_point, _sponsor);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3243)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      activePointManager(_point)
    |    {
  > |      azimuth.cancelEscape(_point);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      external
    |    {
  > |      require( azimuth.isEscaping(_point) &&
    |               azimuth.canManage( azimuth.getEscapeRequest(_point),
    |                                  msg.sender ) );
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    {
    |      require( azimuth.isEscaping(_point) &&
  > |               azimuth.canManage( azimuth.getEscapeRequest(_point),
    |                                  msg.sender ) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  its escape request is reset to "not escaping"
    |      //
  > |      azimuth.doEscape(_point);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      external
    |    {
  > |      require( azimuth.isEscaping(_point) &&
    |               azimuth.canManage( azimuth.getEscapeRequest(_point),
    |                                  msg.sender ) );
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    {
    |      require( azimuth.isEscaping(_point) &&
  > |               azimuth.canManage( azimuth.getEscapeRequest(_point),
    |                                  msg.sender ) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  reset the _point's escape request to "not escaping"
    |      //
  > |      azimuth.cancelEscape(_point);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      external
    |    {
  > |      require( azimuth.hasSponsor(_point) &&
    |               azimuth.canManage(azimuth.getSponsor(_point), msg.sender) );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    {
    |      require( azimuth.hasSponsor(_point) &&
  > |               azimuth.canManage(azimuth.getSponsor(_point), msg.sender) );
    |
    |      //  signal that its sponsor no longer supports _point
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  signal that its sponsor no longer supports _point
    |      //
  > |      azimuth.loseSponsor(_point);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      returns (uint32 limit)
    |    {
  > |      Azimuth.Size size = azimuth.getPointSize(_point);
    |
    |      if ( size == Azimuth.Size.Galaxy )
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3321)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  can't escape to a sponsor that hasn't been linked
    |      //
  > |      if ( !azimuth.hasBeenLinked(_sponsor) ) return false;
    |
    |      //  Can only escape to a point one size higher than ourselves,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  star sponsors eventually.
    |      //
  > |      Azimuth.Size pointSize = azimuth.getPointSize(_point);
    |      Azimuth.Size sponsorSize = azimuth.getPointSize(_sponsor);
    |      return ( //  normal hierarchical escape structure
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //
    |      Azimuth.Size pointSize = azimuth.getPointSize(_point);
  > |      Azimuth.Size sponsorSize = azimuth.getPointSize(_sponsor);
    |      return ( //  normal hierarchical escape structure
    |               //
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |                 //  yet, because it's only for lightweight invitation chains
    |                 //
  > |                 !azimuth.hasBeenLinked(_point) ) );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3396)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      activePointOwner(_point)
    |    {
  > |      azimuth.setManagementProxy(_point, _manager);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3413)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      activePointOwner(_prefix)
    |    {
  > |      azimuth.setSpawnProxy(_prefix, _spawnProxy);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3423)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      activePointOwner(_galaxy)
    |    {
  > |      azimuth.setVotingProxy(_galaxy, _voter);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3435)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  owner: owner of _point
    |      //
  > |      address owner = azimuth.getOwner(_point);
    |
    |      //  caller must be :owner, or an operator designated by the owner.
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3449)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  caller must be :owner, or an operator designated by the owner.
    |      //
  > |      require((owner == msg.sender) || azimuth.isOperator(owner, msg.sender));
    |
    |      //  set transfer proxy field in Azimuth contract
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  set transfer proxy field in Azimuth contract
    |      //
  > |      azimuth.setTransferProxy(_point, _transferProxy);
    |
    |      //  emit Approval event
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3457)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  ensure that the upgrade target expects this contract as the source
    |      //
  > |      require(_proposal.previousEcliptic() == address(this));
    |      polls.startUpgradePoll(_proposal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3482)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //
    |      require(_proposal.previousEcliptic() == address(this));
  > |      polls.startUpgradePoll(_proposal);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      activePointVoter(_galaxy)
    |    {
  > |      polls.startDocumentPoll(_proposal);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3495)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  majority: true if the vote resulted in a majority, false otherwise
    |      //
  > |      bool majority = polls.castUpgradeVote(_galaxy, _proposal, _vote);
    |
    |      //  if a majority is in favor of the upgrade, it happens as defined
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3514)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      activePointVoter(_galaxy)
    |    {
  > |      polls.castDocumentVote(_galaxy, _proposal, _vote);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3533)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  majority: true if the poll ended in a majority, false otherwise
    |      //
  > |      bool majority = polls.updateUpgradePoll(_proposal);
    |
    |      //  if a majority is in favor of the upgrade, it happens as defined
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      external
    |    {
  > |      polls.updateDocumentPoll(_proposal);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3563)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  created, and only to non-zero addresses
    |      //
  > |      require( azimuth.isOwner(_galaxy, 0x0) &&
    |               0x0 != _target );
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3580)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      //  new galaxy means a new registered voter
    |      //
  > |      polls.incrementTotalVoters();
    |
    |      //  if the caller is sending the galaxy to themselves,
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3585)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |      onlyOwner
    |    {
  > |      azimuth.setDnsDomains(_primary, _secondary, _tertiary);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3608)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    modifier activePointVoter(uint32 _point)
    |    {
  > |      require( azimuth.canVoteAs(_point, msg.sender) &&
    |               azimuth.isActive(_point) );
    |      _;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3628)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ecliptic':
    |    {
    |      require( azimuth.canVoteAs(_point, msg.sender) &&
  > |               azimuth.isActive(_point) );
    |      _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3629)

[33mWarning[0m for UnrestrictedWrite in contract 'Ecliptic':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ecliptic':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(81)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(81)

[33mWarning[0m for DAOConstantGas in contract 'PlanetSale':
    |    {
    |      require(0x0 != _target);
  > |      _target.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3750)

[33mWarning[0m for LockedEther in contract 'PlanetSale':
    |//    to sell their planets on-chain.
    |//
  > |contract PlanetSale is Ownable
    |{
    |  //  PlanetSold: _planet has been sold
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3652)

[31mViolation[0m for TODAmount in contract 'PlanetSale':
    |    {
    |      require(0x0 != _target);
  > |      _target.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3750)

[33mWarning[0m for TODReceiver in contract 'PlanetSale':
    |    {
    |      require(0x0 != _target);
  > |      _target.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3750)

[33mWarning[0m for UnhandledException in contract 'PlanetSale':
    |      returns (bool result)
    |    {
  > |      uint16 prefix = azimuth.getPrefix(_planet);
    |
    |      return ( //  planet must not have an owner yet
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3687)

[33mWarning[0m for UnhandledException in contract 'PlanetSale':
    |      return ( //  planet must not have an owner yet
    |               //
  > |               azimuth.isOwner(_planet, 0x0) &&
    |               //
    |               //  this contract must be allowed to spawn for the prefix
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3691)

[33mWarning[0m for UnhandledException in contract 'PlanetSale':
    |               //  this contract must be allowed to spawn for the prefix
    |               //
  > |               azimuth.isSpawnProxy(prefix, this) &&
    |               //
    |               //  prefix must be linked
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3695)

[33mWarning[0m for UnhandledException in contract 'PlanetSale':
    |               //  prefix must be linked
    |               //
  > |               azimuth.hasBeenLinked(prefix) );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3699)

[33mWarning[0m for UnhandledException in contract 'PlanetSale':
    |      //    a window of opportunity to cancel the transfer
    |      //
  > |      Ecliptic ecliptic = Ecliptic(azimuth.owner());
    |      ecliptic.spawn(_planet, this);
    |      ecliptic.transferPoint(_planet, msg.sender, false);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3723)

[33mWarning[0m for UnhandledException in contract 'PlanetSale':
    |      //
    |      Ecliptic ecliptic = Ecliptic(azimuth.owner());
  > |      ecliptic.spawn(_planet, this);
    |      ecliptic.transferPoint(_planet, msg.sender, false);
    |      emit PlanetSold(azimuth.getPrefix(_planet), _planet);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3724)

[33mWarning[0m for UnhandledException in contract 'PlanetSale':
    |      Ecliptic ecliptic = Ecliptic(azimuth.owner());
    |      ecliptic.spawn(_planet, this);
  > |      ecliptic.transferPoint(_planet, msg.sender, false);
    |      emit PlanetSold(azimuth.getPrefix(_planet), _planet);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3725)

[33mWarning[0m for UnhandledException in contract 'PlanetSale':
    |      ecliptic.spawn(_planet, this);
    |      ecliptic.transferPoint(_planet, msg.sender, false);
  > |      emit PlanetSold(azimuth.getPrefix(_planet), _planet);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3726)

[33mWarning[0m for UnhandledException in contract 'PlanetSale':
    |    {
    |      require(0x0 != _target);
  > |      _target.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3750)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanetSale':
    |      returns (bool result)
    |    {
  > |      uint16 prefix = azimuth.getPrefix(_planet);
    |
    |      return ( //  planet must not have an owner yet
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3687)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanetSale':
    |      return ( //  planet must not have an owner yet
    |               //
  > |               azimuth.isOwner(_planet, 0x0) &&
    |               //
    |               //  this contract must be allowed to spawn for the prefix
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanetSale':
    |               //  this contract must be allowed to spawn for the prefix
    |               //
  > |               azimuth.isSpawnProxy(prefix, this) &&
    |               //
    |               //  prefix must be linked
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3695)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanetSale':
    |               //  prefix must be linked
    |               //
  > |               azimuth.hasBeenLinked(prefix) );
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3699)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanetSale':
    |      //    a window of opportunity to cancel the transfer
    |      //
  > |      Ecliptic ecliptic = Ecliptic(azimuth.owner());
    |      ecliptic.spawn(_planet, this);
    |      ecliptic.transferPoint(_planet, msg.sender, false);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3723)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanetSale':
    |      //
    |      Ecliptic ecliptic = Ecliptic(azimuth.owner());
  > |      ecliptic.spawn(_planet, this);
    |      ecliptic.transferPoint(_planet, msg.sender, false);
    |      emit PlanetSold(azimuth.getPrefix(_planet), _planet);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3724)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanetSale':
    |      Ecliptic ecliptic = Ecliptic(azimuth.owner());
    |      ecliptic.spawn(_planet, this);
  > |      ecliptic.transferPoint(_planet, msg.sender, false);
    |      emit PlanetSold(azimuth.getPrefix(_planet), _planet);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanetSale':
    |      ecliptic.spawn(_planet, this);
    |      ecliptic.transferPoint(_planet, msg.sender, false);
  > |      emit PlanetSold(azimuth.getPrefix(_planet), _planet);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3726)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PlanetSale':
    |    {
    |      require(0x0 != _target);
  > |      _target.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3750)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanetSale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanetSale':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'PlanetSale':
    |    {
    |      require(0 < _price);
  > |      price = _price;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(3740)

[31mViolation[0m for LockedEther in contract 'Polls':
    |//    This contract will be owned by the Ecliptic contract.
    |//
  > |contract Polls is Ownable
    |{
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1688)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |
    |/**
  > | * @title ERC165
    | * @dev https://github.com/ethereum/EIPs/blob/master/EIPS/eip-165.md
    | */
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    require( (5 days <= _pollDuration) && (_pollDuration <= 90 days) &&
    |             (5 days <= _pollCooldown) && (_pollCooldown <= 90 days) );
  > |    pollDuration = _pollDuration;
    |    pollCooldown = _pollCooldown;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1815)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |             (5 days <= _pollCooldown) && (_pollCooldown <= 90 days) );
    |    pollDuration = _pollDuration;
  > |    pollCooldown = _pollCooldown;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1816)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |  {
    |    require(totalVoters < 256);
  > |    totalVoters = totalVoters.add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1826)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    if (0 == poll.start)
    |    {
  > |      upgradeProposals.push(_proposal);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1926)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    if (0 == poll.start)
    |    {
  > |      documentProposals.push(_proposal);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1950)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    //  set started poll state
    |    //
  > |    _poll.start = block.timestamp;
    |    delete _poll.voted;
    |    _poll.yesVotes = 0;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1972)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    //  update poll state to account for the new vote
    |    //
  > |    _poll.voted[_as] = true;
    |    if (_vote)
    |    {
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2027)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    if (_vote)
    |    {
  > |      _poll.yesVotes = _poll.yesVotes.add(1);
    |    }
    |    else
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2030)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    else
    |    {
  > |      _poll.noVotes = _poll.noVotes.add(1);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2034)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    if (majority)
    |    {
  > |      upgradeHasAchievedMajority[_proposal] = true;
    |      emit UpgradeMajority(_proposal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2060)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    if (majority)
    |    {
  > |      documentHasAchievedMajority[_proposal] = true;
    |      documentMajorities.push(_proposal);
    |      emit DocumentMajority(_proposal);
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2089)

[33mWarning[0m for UnrestrictedWrite in contract 'Polls':
    |    {
    |      documentHasAchievedMajority[_proposal] = true;
  > |      documentMajorities.push(_proposal);
    |      emit DocumentMajority(_proposal);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2090)

[33mWarning[0m for LockedEther in contract 'ReadsAzimuth':
    |//    checks and operations using the Azimuth contract.
    |//
  > |contract ReadsAzimuth
    |{
    |  //  azimuth: points data storage contract.
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1540)

[33mWarning[0m for MissingInputValidation in contract 'ReadsAzimuth':
    |  //  azimuth: points data storage contract.
    |  //
  > |  Azimuth public azimuth;
    |
    |  //  constructor(): set the Azimuth data contract's address
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1544)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2669)

[33mWarning[0m for LockedEther in contract 'SafeMath16':
    | * @dev Math operations for uint16 with safety checks that throw on error
    | */
  > |library SafeMath16 {
    |  function mul(uint16 a, uint16 b) internal pure returns (uint16) {
    |    uint16 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1632)

[33mWarning[0m for LockedEther in contract 'SafeMath8':
    | * @dev Math operations for uint8 with safety checks that throw on error
    | */
  > |library SafeMath8 {
    |  function mul(uint8 a, uint8 b) internal pure returns (uint8) {
    |    uint8 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(1600)

[33mWarning[0m for LockedEther in contract 'SupportsInterfaceWithLookup':
    | * @dev Implements ERC165 using a lookup table.
    | */
  > |contract SupportsInterfaceWithLookup is ERC165 {
    |
    |  bytes4 public constant InterfaceId_ERC165 = 0x01ffc9a7;
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2420)

[31mViolation[0m for MissingInputValidation in contract 'SupportsInterfaceWithLookup':
    |   * @dev implement supportsInterface(bytes4) using a lookup table
    |   */
  > |  function supportsInterface(bytes4 _interfaceId)
    |    external
    |    view
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2446)

[33mWarning[0m for MissingInputValidation in contract 'SupportsInterfaceWithLookup':
    |contract SupportsInterfaceWithLookup is ERC165 {
    |
  > |  bytes4 public constant InterfaceId_ERC165 = 0x01ffc9a7;
    |  /**
    |   * 0x01ffc9a7 ===
  at /home/jiaming/mavs_srcs/contract@0x060d68aeb7e817628d3df96ed396e61ece494081.sol(2422)


