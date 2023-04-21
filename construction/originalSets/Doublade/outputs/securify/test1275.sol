Processing contract: /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol:CatalogPlayers
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol:FMWorldAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CatalogPlayers':
    |}
    |
  > |contract CatalogPlayers is FMWorldAccessControl
    |{
    |    struct ClassPlayer
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'CatalogPlayers':
    |
    |
  > |    function setPause(bool _pause) external onlyC {
    |        pause = _pause;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |
  > |    mapping(uint256 => mapping(uint256 => boxPlayer)) public boxPlayers;
    |
    |    function newClassPlayer(
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(297)

[31mViolation[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    mapping(uint256 => mapping(uint256 => boxPlayer)) public boxPlayers;
    |
  > |    function newClassPlayer(
    |        uint256 _league,
    |        uint256 _position,
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(299)

[31mViolation[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |
  > |    function getClassPlayers(uint256 _league, uint256 _position, uint256 _index) public view returns(uint32[7] skills)
    |    {
    |        ClassPlayer memory classPlayer = boxPlayers[_league][_position].classPlayers[_index];
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(325)

[31mViolation[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |
  > |    function getLengthClassPlayers(uint256 _league, uint256 _position) public view returns (uint256)
    |    {
    |        return boxPlayers[_league][_position].classPlayers.length;
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(337)

[31mViolation[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |
  > |    function setBoxPrice(uint256 _league, uint256 _position, uint256 _price) onlyCEO public
    |    {
    |        boxPlayers[_league][_position].price = _price;
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(342)

[31mViolation[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |
  > |    function getBoxPrice(uint256 _league, uint256 _position) public view returns (uint256)
    |    {
    |        return boxPlayers[_league][_position].price + ((boxPlayers[_league][_position].countSales / 10) * (boxPlayers[_league][_position].price / 100));
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(347)

[31mViolation[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |    
  > |    function incrementCountSales(uint256 _league, uint256 _position) public onlyCOO {
    |        boxPlayers[_league][_position].countSales++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(352)

[31mViolation[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |    
  > |    function getCountSales(uint256 _league, uint256 _position) public view returns(uint256) {
    |        return boxPlayers[_league][_position].countSales;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(356)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |
    |contract FMWorldAccessControl {
  > |    address public ceoAddress;
    |    address public cooAddress;
    |    
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |contract FMWorldAccessControl {
    |    address public ceoAddress;
  > |    address public cooAddress;
    |    
    |    bool public pause = false;
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    address public cooAddress;
    |    
  > |    bool public pause = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |    
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |        ceoAddress = _newCEO;
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |    
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |}
    |
  > |contract CatalogPlayers is FMWorldAccessControl
    |{
    |    struct ClassPlayer
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |    
  > |    function _set1() onlyCEO public {
    |        //init for dev, def-2
    |        newClassPlayer(2,2,5,10,2,3,5,5,10);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |    
  > |    function _set2() onlyCEO public {
    |        newClassPlayer(1,2,3,7,1,1,5,5,8);
    |        newClassPlayer(1,2,4,7,1,2,4,4,6);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |    
  > |    function _set3() onlyCEO public {
    |        //init for dev, def-3
    |        newClassPlayer(3,2,7,14,2,3,6,6,13);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }    
    |    
  > |    function _set4() onlyCEO public {
    |        // //gk-1
    |        newClassPlayer(1,1,3,0,0,0,27,0,0);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |
  > |    function _set5() onlyCEO public {
    |        // //gk-2
    |        newClassPlayer(2,1,5,0,0,0,35,0,0);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |
  > |    function _set6() onlyCEO public {
    |        // //gk-3
    |        newClassPlayer(3,1,7,0,0,0,44,0,0);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |
  > |    function _set7() onlyCEO public {
    |        //mid-1
    |        newClassPlayer(1,3,3,5,2,3,4,7,6);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |    
  > |    function _set8() onlyCEO public {
    |        //mid-2
    |        newClassPlayer(2,3,5,10,3,4,3,10,5);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }
    |    
  > |    function _set11() onlyCEO public {
    |        //mid-3
    |        newClassPlayer(3,3,7,4,5,5,5,20,5);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }    
    |    
  > |    function _set9() onlyCEO public {
    |        //fw-1
    |        newClassPlayer(1,4,3,2,6,7,8,2,2);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'CatalogPlayers':
    |    }    
    |
  > |    function _set10() onlyCEO public {
    |        //fw-2
    |        newClassPlayer(2,4,5,3,3,12,11,3,3);
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'CatalogPlayers':
    |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
  > |        ceoAddress = _newCEO;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'CatalogPlayers':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'CatalogPlayers':
    |
    |    function setPause(bool _pause) external onlyC {
  > |        pause = _pause;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'CatalogPlayers':
    |    
    |    function incrementCountSales(uint256 _league, uint256 _position) public onlyCOO {
  > |        boxPlayers[_league][_position].countSales++;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(353)

[33mWarning[0m for LockedEther in contract 'FMWorldAccessControl':
    |}
    |
  > |contract FMWorldAccessControl {
    |    address public ceoAddress;
    |    address public cooAddress;
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |
    |
  > |    function setPause(bool _pause) external onlyC {
    |        pause = _pause;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |
    |contract FMWorldAccessControl {
  > |    address public ceoAddress;
    |    address public cooAddress;
    |    
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |contract FMWorldAccessControl {
    |    address public ceoAddress;
  > |    address public cooAddress;
    |    
    |    bool public pause = false;
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    address public cooAddress;
    |    
  > |    bool public pause = false;
    |
    |    modifier onlyCEO() {
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    }
    |    
  > |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
    |        ceoAddress = _newCEO;
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'FMWorldAccessControl':
    |    }
    |    
  > |    function setCOO(address _newCOO) external onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |    function setCEO(address _newCEO) external onlyCEO {
    |        require(_newCEO != address(0));
  > |        ceoAddress = _newCEO;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'FMWorldAccessControl':
    |
    |    function setPause(bool _pause) external onlyC {
  > |        pause = _pause;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.16;
    |
  > |contract SafeMath {
    |    function safeAdd(uint256 x, uint256 y) pure internal returns(uint256) {
    |      uint256 z = x + y;
  at /home/jiaming/mavs_srcs/contract@0x506ed55d9c36a749066a3bd021ceb1af75d2e5a1.sol(3)


