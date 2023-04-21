Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol:UnicornAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol:UnicornBase
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol:UnicornBreedingInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol:UnicornManagementInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol:UnicornToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(3)

[33mWarning[0m for LockedEther in contract 'UnicornAccessControl':
    |}
    |
  > |contract UnicornAccessControl {
    |
    |    UnicornManagementInterface public unicornManagement;
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'UnicornAccessControl':
    |contract UnicornAccessControl {
    |
  > |    UnicornManagementInterface public unicornManagement;
    |
    |    function UnicornAccessControl(address _unicornManagementAddress) public {
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'UnicornAccessControl':
    |    }
    |
  > |    function isGamePaused() external view returns (bool) {
    |        return unicornManagement.paused();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(137)

[33mWarning[0m for UnhandledException in contract 'UnicornAccessControl':
    |
    |    function isGamePaused() external view returns (bool) {
  > |        return unicornManagement.paused();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornAccessControl':
    |
    |    function isGamePaused() external view returns (bool) {
  > |        return unicornManagement.paused();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(138)

[31mViolation[0m for LockedEther in contract 'UnicornToken':
    |}
    |
  > |contract UnicornToken is UnicornBase {
    |    string public constant name = "UnicornGO";
    |    string public constant symbol = "UNG";
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(519)

[33mWarning[0m for UnhandledException in contract 'UnicornToken':
    |
    |    modifier whenPaused {
  > |        require(unicornManagement.paused());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(107)

[33mWarning[0m for UnhandledException in contract 'UnicornToken':
    |
    |    modifier onlyBreeding() {
  > |        require(msg.sender == unicornManagement.unicornBreedingAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(118)

[33mWarning[0m for UnhandledException in contract 'UnicornToken':
    |
    |    modifier onlyGeneLab() {
  > |        require(msg.sender == unicornManagement.geneLabAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(123)

[33mWarning[0m for UnhandledException in contract 'UnicornToken':
    |
    |    modifier onlyBlackBox() {
  > |        require(msg.sender == unicornManagement.blackBoxAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(128)

[33mWarning[0m for UnhandledException in contract 'UnicornToken':
    |
    |    function isGamePaused() external view returns (bool) {
  > |        return unicornManagement.paused();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(138)

[33mWarning[0m for UnhandledException in contract 'UnicornToken':
    |        //TODO check if contract exists?
    |        //        if (address(unicornBreeding) != address(0)) {
  > |        unicornBreeding.deleteOffer(_unicornId);
    |        unicornBreeding.deleteHybridization(_unicornId);
    |        //        }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(373)

[33mWarning[0m for UnhandledException in contract 'UnicornToken':
    |        //        if (address(unicornBreeding) != address(0)) {
    |        unicornBreeding.deleteOffer(_unicornId);
  > |        unicornBreeding.deleteHybridization(_unicornId);
    |        //        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(374)

[33mWarning[0m for UnhandledException in contract 'UnicornToken':
    |
    |    function init() onlyManagement whenPaused external {
  > |        unicornBreeding = UnicornBreedingInterface(unicornManagement.unicornBreedingAddress());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(528)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornToken':
    |
    |    modifier whenPaused {
  > |        require(unicornManagement.paused());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(107)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornToken':
    |
    |    modifier onlyBreeding() {
  > |        require(msg.sender == unicornManagement.unicornBreedingAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornToken':
    |
    |    modifier onlyGeneLab() {
  > |        require(msg.sender == unicornManagement.geneLabAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornToken':
    |
    |    modifier onlyBlackBox() {
  > |        require(msg.sender == unicornManagement.blackBoxAddress());
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornToken':
    |
    |    function isGamePaused() external view returns (bool) {
  > |        return unicornManagement.paused();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornToken':
    |        //TODO check if contract exists?
    |        //        if (address(unicornBreeding) != address(0)) {
  > |        unicornBreeding.deleteOffer(_unicornId);
    |        unicornBreeding.deleteHybridization(_unicornId);
    |        //        }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(373)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornToken':
    |        //        if (address(unicornBreeding) != address(0)) {
    |        unicornBreeding.deleteOffer(_unicornId);
  > |        unicornBreeding.deleteHybridization(_unicornId);
    |        //        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(374)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnicornToken':
    |
    |    function init() onlyManagement whenPaused external {
  > |        unicornBreeding = UnicornBreedingInterface(unicornManagement.unicornBreedingAddress());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(528)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |pragma solidity ^0.4.21;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        require(_to != msg.sender);
    |        if (approvedFor(_unicornId) != address(0) || _to != address(0)) {
  > |            unicornApprovals[_unicornId] = _to;
    |            emit Approval(msg.sender, _to, _unicornId);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |    function clearApproval(address _owner, uint256 _unicornId) private {
    |        require(owns(_owner, _unicornId));
  > |        unicornApprovals[_unicornId] = 0;
    |        emit Approval(_owner, 0, _unicornId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |    function addUnicorn(address _to, uint256 _unicornId) private {
    |        require(unicornOwner[_unicornId] == address(0));
  > |        unicornOwner[_unicornId] = _to;
    |        //        uint256 length = balanceOf(_to);
    |        uint256 length = ownedUnicorns[_to].length;
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        //        uint256 length = balanceOf(_to);
    |        uint256 length = ownedUnicorns[_to].length;
  > |        ownedUnicorns[_to].push(_unicornId);
    |        ownedUnicornsIndex[_unicornId] = length;
    |        totalUnicorns = totalUnicorns.add(1);
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(340)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        uint256 length = ownedUnicorns[_to].length;
    |        ownedUnicorns[_to].push(_unicornId);
  > |        ownedUnicornsIndex[_unicornId] = length;
    |        totalUnicorns = totalUnicorns.add(1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        ownedUnicorns[_to].push(_unicornId);
    |        ownedUnicornsIndex[_unicornId] = length;
  > |        totalUnicorns = totalUnicorns.add(1);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        uint256 lastUnicorn = ownedUnicorns[_from][lastUnicornIndex];
    |
  > |        unicornOwner[_unicornId] = 0;
    |        ownedUnicorns[_from][unicornIndex] = lastUnicorn;
    |        ownedUnicorns[_from][lastUnicornIndex] = 0;
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |
    |        unicornOwner[_unicornId] = 0;
  > |        ownedUnicorns[_from][unicornIndex] = lastUnicorn;
    |        ownedUnicorns[_from][lastUnicornIndex] = 0;
    |        // Note that this will handle single-element arrays. In that case, both unicornIndex and lastUnicornIndex are going to
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        unicornOwner[_unicornId] = 0;
    |        ownedUnicorns[_from][unicornIndex] = lastUnicorn;
  > |        ownedUnicorns[_from][lastUnicornIndex] = 0;
    |        // Note that this will handle single-element arrays. In that case, both unicornIndex and lastUnicornIndex are going to
    |        // be zero. Then we can make sure that we will remove _unicornId from the ownedUnicorns list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |
    |        ownedUnicorns[_from].length--;
  > |        ownedUnicornsIndex[_unicornId] = 0;
    |        ownedUnicornsIndex[lastUnicorn] = unicornIndex;
    |        totalUnicorns = totalUnicorns.sub(1);
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        ownedUnicorns[_from].length--;
    |        ownedUnicornsIndex[_unicornId] = 0;
  > |        ownedUnicornsIndex[lastUnicorn] = unicornIndex;
    |        totalUnicorns = totalUnicorns.sub(1);
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        ownedUnicornsIndex[_unicornId] = 0;
    |        ownedUnicornsIndex[lastUnicorn] = unicornIndex;
  > |        totalUnicorns = totalUnicorns.sub(1);
    |
    |        //deleting sale offer, if exists
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |    function createUnicorn(address _owner) onlyBreeding external returns (uint) {
    |        require(_owner != address(0));
  > |        uint256 _unicornId = lastUnicornId++;
    |        addUnicorn(_owner, _unicornId);
    |        //store new unicorn data
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(392)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |    function updateGene(uint _unicornId, bytes _gene) onlyGeneLab public {
    |        require(unicornApprovalsForGeneLab[_unicornId]);
  > |        delete unicornApprovalsForGeneLab[_unicornId];
    |        unicorns[_unicornId].gene = _gene;
    |        emit UnicornGeneUpdate(_unicornId);
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(456)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |
    |    function approveForGeneLab(uint256 _unicornId) public onlyOwnerOf(_unicornId) {
  > |        unicornApprovalsForGeneLab[_unicornId] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |
    |    function clearApprovalForGeneLab(uint256 _unicornId) public onlyOwnerOf(_unicornId) {
  > |        delete unicornApprovalsForGeneLab[_unicornId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |
    |    function plusFreezingTime(uint _unicornId) onlyBreeding external  {
  > |        unicorns[_unicornId].freezingEndTime = uint64(_getFreezeTime(getUnicornGenByte(_unicornId, 163)) + now);
    |        emit UnicornFreezingTimeSet(_unicornId, unicorns[_unicornId].freezingEndTime);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(475)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |
    |    function plusTourFreezingTime(uint _unicornId) onlyBreeding external {
  > |        unicorns[_unicornId].freezingTourEndTime = uint64(_getFreezeTime(getUnicornGenByte(_unicornId, 168)) + now);
    |        emit UnicornTourFreezingTimeSet(_unicornId, unicorns[_unicornId].freezingTourEndTime);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        require(unicorns[_unicornId].freezingEndTime > now);
    |        //не используем safeMath, т.к. subFreezingTime в теории не должен быть больше now %)
  > |        unicorns[_unicornId].freezingEndTime -= _time;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(498)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |        require(unicorns[_unicornId].freezingTourEndTime > now);
    |        //не используем safeMath, т.к. subTourFreezingTime в теории не должен быть больше now %)
  > |        unicorns[_unicornId].freezingTourEndTime -= _time;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(506)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |}
    |
  > |contract UnicornToken is UnicornBase {
    |    string public constant name = "UnicornGO";
    |    string public constant symbol = "UNG";
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(519)

[33mWarning[0m for UnrestrictedWrite in contract 'UnicornToken':
    |
    |    function init() onlyManagement whenPaused external {
  > |        unicornBreeding = UnicornBreedingInterface(unicornManagement.unicornBreedingAddress());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0010af06edff540af798d06e866d95cbdc8488.sol(528)


