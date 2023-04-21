Processing contract: /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol:AccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol:Base
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol:Breeding
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol:ClownCore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol:GeneScienceInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol:Minting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol:Ownership
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol:token
[33mWarning[0m for LockedEther in contract 'AccessControl':
    |
    |
  > |contract AccessControl {
    |    
    |    event ContractUpgrade(address newContract);
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    event ContractUpgrade(address newContract);
    |
  > |    address public ceoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |
    |    address public ceoAddress;
  > |    address public cooAddress;
    |
    |    bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    address public cooAddress;
    |
  > |    bool public paused = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    }
    |
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'AccessControl':
    |    }
    |
  > |    function unpause() public onlyCEO whenPaused {
    |        paused = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'AccessControl':
    |
    |    function unpause() public onlyCEO whenPaused {
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(91)

[33mWarning[0m for LockedEther in contract 'Base':
    |}
    |
  > |contract Base is AccessControl {
    |
    |    event Birth(address owner, uint clownId, uint matronId, uint sireId, uint genes);
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |    Clown[] clowns;
    |
  > |    mapping (uint => address) public clownIndexToOwner;
    |
    |    mapping (address => uint) ownershipTokenCount;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'Base':
    |    mapping (address => uint) ownershipTokenCount;
    |
  > |    mapping (uint => address) public clownIndexToApproved;
    |
    |    uint _seed = now;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    event ContractUpgrade(address newContract);
    |
  > |    address public ceoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |
    |    address public ceoAddress;
  > |    address public cooAddress;
    |
    |    bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    address public cooAddress;
    |
  > |    bool public paused = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    }
    |
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Base':
    |    }
    |
  > |    function unpause() public onlyCEO whenPaused {
    |        paused = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Base':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Base':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Base':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Base':
    |
    |    function unpause() public onlyCEO whenPaused {
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(91)

[33mWarning[0m for LockedEther in contract 'Breeding':
    |
    |
  > |contract Breeding is Ownership {
    |
    |    GeneScienceInterface public geneScience;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(430)

[33mWarning[0m for UnhandledException in contract 'Breeding':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(437)

[33mWarning[0m for UnhandledException in contract 'Breeding':
    |        uint mGenes = matron.genes;
    |        uint sGenes = sire.genes;
  > |        uint childGenes = geneScience.mixGenes(mGenes, sGenes, promoTypeNum);
    |        
    |        address owner = clownIndexToOwner[_matronId];
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(472)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Breeding':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Breeding':
    |        uint mGenes = matron.genes;
    |        uint sGenes = sire.genes;
  > |        uint childGenes = geneScience.mixGenes(mGenes, sGenes, promoTypeNum);
    |        
    |        address owner = clownIndexToOwner[_matronId];
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(472)

[31mViolation[0m for UnrestrictedWrite in contract 'Breeding':
    |            for (uint k = 0; k < 6; k++) {
    |                if (rankList[k] >= digNum && rankNum == 10) {
  > |                    rankNum = k;
    |                }
    |            }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'Breeding':
    |
    |
  > |contract Breeding is Ownership {
    |
    |    GeneScienceInterface public geneScience;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |            delete clownIndexToApproved[_tokenId];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  > |            delete clownIndexToApproved[_tokenId];
    |        }
    |        Transfer(_from, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |pragma solidity ^0.4.23;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |
    |    function unpause() public onlyCEO whenPaused {
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |
    |    function _random(uint size) internal returns (uint) {
  > |        _seed = uint(keccak256(keccak256(block.number, _seed), now));
    |        return _seed % size;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
  > |        ownershipTokenCount[_to]++;
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
    |        ownershipTokenCount[_to]++;
  > |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |
    |            uint digNum = _random(100);
  > |            rankNum = 10;
    |            for (uint k = 0; k < 6; k++) {
    |                if (rankList[k] >= digNum && rankNum == 10) {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |            attrWisdom: randomValue[2]
    |        });
  > |        uint newClownId = clowns.push(_clown) - 1;
    |
    |        require(newClownId == uint(uint32(newClownId)));
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |
    |    function _approve(uint _tokenId, address _approved) internal {
  > |        clownIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |
    |
  > |contract Breeding is Ownership {
    |
    |    GeneScienceInterface public geneScience;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(430)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |        require(candidateContract.isGeneScience());
    |
  > |        geneScience = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'Breeding':
    |    function _updateCooldown(Clown storage _clown) internal {
    |        if (_clown.cooldownIndex < 7) {
  > |            _clown.cooldownIndex += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(445)

[31mViolation[0m for LockedEther in contract 'ClownCore':
    |
    |
  > |contract ClownCore is Minting, Breeding {
    |
    |    address public newContractAddress;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(483)

[33mWarning[0m for UnhandledException in contract 'ClownCore':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(437)

[33mWarning[0m for UnhandledException in contract 'ClownCore':
    |        uint mGenes = matron.genes;
    |        uint sGenes = sire.genes;
  > |        uint childGenes = geneScience.mixGenes(mGenes, sGenes, promoTypeNum);
    |        
    |        address owner = clownIndexToOwner[_matronId];
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(472)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClownCore':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ClownCore':
    |        uint mGenes = matron.genes;
    |        uint sGenes = sire.genes;
  > |        uint childGenes = geneScience.mixGenes(mGenes, sGenes, promoTypeNum);
    |        
    |        address owner = clownIndexToOwner[_matronId];
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |pragma solidity ^0.4.23;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |
    |    function unpause() public onlyCEO whenPaused {
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |
    |    function _random(uint size) internal returns (uint) {
  > |        _seed = uint(keccak256(keccak256(block.number, _seed), now));
    |        return _seed % size;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
  > |        ownershipTokenCount[_to]++;
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
    |        ownershipTokenCount[_to]++;
  > |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |            delete clownIndexToApproved[_tokenId];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  > |            delete clownIndexToApproved[_tokenId];
    |        }
    |        Transfer(_from, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |
    |            uint digNum = _random(100);
  > |            rankNum = 10;
    |            for (uint k = 0; k < 6; k++) {
    |                if (rankList[k] >= digNum && rankNum == 10) {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |            attrWisdom: randomValue[2]
    |        });
  > |        uint newClownId = clowns.push(_clown) - 1;
    |
    |        require(newClownId == uint(uint32(newClownId)));
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |
    |    function _approve(uint _tokenId, address _approved) internal {
  > |        clownIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |        require(promoCreatedCount < PROMO_CREATION_LIMIT);
    |        if (_isNew) {
  > |            promoTypeNum++;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |        }
    |
  > |        promoCreatedCount++;
    |        _createClown(0, 0, 0, _genes, clownOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |        _createClown(0, 0, 0, _genes, msg.sender);
    |
  > |        gen0CreatedCount++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |        require(candidateContract.isGeneScience());
    |
  > |        geneScience = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |    function _updateCooldown(Clown storage _clown) internal {
    |        if (_clown.cooldownIndex < 7) {
  > |            _clown.cooldownIndex += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |
    |
  > |contract ClownCore is Minting, Breeding {
    |
    |    address public newContractAddress;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'ClownCore':
    |
    |    function setNewAddress(address _newAddress) external onlyCEO whenPaused {
  > |        newContractAddress = _newAddress;
    |        ContractUpgrade(_newAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(499)

[31mViolation[0m for LockedEther in contract 'Minting':
    |
    |
  > |contract Minting is Ownership {
    |
    |    uint public constant PROMO_CREATION_LIMIT = 5000;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |pragma solidity ^0.4.23;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |
    |    function unpause() public onlyCEO whenPaused {
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |
    |    function _random(uint size) internal returns (uint) {
  > |        _seed = uint(keccak256(keccak256(block.number, _seed), now));
    |        return _seed % size;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
  > |        ownershipTokenCount[_to]++;
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
    |        ownershipTokenCount[_to]++;
  > |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |            delete clownIndexToApproved[_tokenId];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  > |            delete clownIndexToApproved[_tokenId];
    |        }
    |        Transfer(_from, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |
    |            uint digNum = _random(100);
  > |            rankNum = 10;
    |            for (uint k = 0; k < 6; k++) {
    |                if (rankList[k] >= digNum && rankNum == 10) {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |            attrWisdom: randomValue[2]
    |        });
  > |        uint newClownId = clowns.push(_clown) - 1;
    |
    |        require(newClownId == uint(uint32(newClownId)));
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |
    |    function _approve(uint _tokenId, address _approved) internal {
  > |        clownIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |
    |
  > |contract Minting is Ownership {
    |
    |    uint public constant PROMO_CREATION_LIMIT = 5000;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |        require(promoCreatedCount < PROMO_CREATION_LIMIT);
    |        if (_isNew) {
  > |            promoTypeNum++;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(388)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |        }
    |
  > |        promoCreatedCount++;
    |        _createClown(0, 0, 0, _genes, clownOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'Minting':
    |        _createClown(0, 0, 0, _genes, msg.sender);
    |
  > |        gen0CreatedCount++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(400)

[33mWarning[0m for LockedEther in contract 'Ownership':
    |}
    |
  > |contract Ownership is Base, token, owned {
    |
    |    string public constant name = "CryptoClown";
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(243)

[31mViolation[0m for MissingInputValidation in contract 'Ownership':
    |    Clown[] clowns;
    |
  > |    mapping (uint => address) public clownIndexToOwner;
    |
    |    mapping (address => uint) ownershipTokenCount;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'Ownership':
    |    mapping (address => uint) ownershipTokenCount;
    |
  > |    mapping (uint => address) public clownIndexToApproved;
    |
    |    uint _seed = now;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint count) {
    |        return ownershipTokenCount[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(284)

[31mViolation[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function transfer(
    |        address _to,
    |        uint _tokenId
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(288)

[31mViolation[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function approve(
    |        address _to,
    |        uint _tokenId
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(303)

[31mViolation[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(317)

[31mViolation[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function ownerOf(uint _tokenId)
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(337)

[31mViolation[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function tokensOfOwner(address _owner) external view returns(uint[] ownerTokens) {
    |        uint tokenCount = balanceOf(_owner);
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(347)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    event ContractUpgrade(address newContract);
    |
  > |    address public ceoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |
    |    address public ceoAddress;
  > |    address public cooAddress;
    |
    |    bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    address public cooAddress;
    |
  > |    bool public paused = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function pause() external onlyCLevel whenNotPaused {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function unpause() public onlyCEO whenPaused {
    |        paused = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _tokenId) internal {
    |        ownershipTokenCount[_to]++;
    |        clownIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |contract Ownership is Base, token, owned {
    |
  > |    string public constant name = "CryptoClown";
    |    string public constant symbol = "CC";
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |
    |    string public constant name = "CryptoClown";
  > |    string public constant symbol = "CC";
    |
    |    uint public promoTypeNum;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(246)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    string public constant symbol = "CC";
    |
  > |    uint public promoTypeNum;
    |
    |    bytes4 constant InterfaceSignature_ERC165 =
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |
    |
  > |    function supportsInterface(bytes4 _interfaceID) external view returns (bool)
    |    {
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(266)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function _owns(address _claimant, uint _tokenId) internal view returns (bool) {
    |        return clownIndexToOwner[_tokenId] == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(272)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function _approvedFor(address _claimant, uint _tokenId) internal view returns (bool) {
    |        return clownIndexToApproved[_tokenId] == _claimant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function _approve(uint _tokenId, address _approved) internal {
    |        clownIndexToApproved[_tokenId] = _approved;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(280)

[33mWarning[0m for MissingInputValidation in contract 'Ownership':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return clowns.length - 2;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(333)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownership':
    |
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
  > |        ownershipTokenCount[_to]++;
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownership':
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
    |        ownershipTokenCount[_to]++;
  > |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownership':
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |            delete clownIndexToApproved[_tokenId];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownership':
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  > |            delete clownIndexToApproved[_tokenId];
    |        }
    |        Transfer(_from, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownership':
    |
    |    function _approve(uint _tokenId, address _approved) internal {
  > |        clownIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |            delete clownIndexToApproved[_tokenId];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  > |            delete clownIndexToApproved[_tokenId];
    |        }
    |        Transfer(_from, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |
    |    function pause() external onlyCLevel whenNotPaused {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |
    |    function unpause() public onlyCEO whenPaused {
  > |        paused = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
  > |        ownershipTokenCount[_to]++;
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
    |        ownershipTokenCount[_to]++;
  > |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |        clownIndexToOwner[_tokenId] = _to;
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |            delete clownIndexToApproved[_tokenId];
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |        if (_from != address(0)) {
    |            ownershipTokenCount[_from]--;
  > |            delete clownIndexToApproved[_tokenId];
    |        }
    |        Transfer(_from, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownership':
    |
    |    function _approve(uint _tokenId, address _approved) internal {
  > |        clownIndexToApproved[_tokenId] = _approved;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(281)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.23;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9884d4e9b305ad015168e9d6e4400582dce2cd59.sol(17)


