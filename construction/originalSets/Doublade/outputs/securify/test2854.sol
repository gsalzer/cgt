Processing contract: /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol:Manager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol:MixFormulaInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol:SkinBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol:SkinMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol:SkinMinting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol:SkinMix
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Manager':
    |pragma solidity ^0.4.18;
    |
  > |contract Manager {
    |    address public ceo;
    |    address public cfo;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |contract Manager {
  > |    address public ceo;
    |    address public cfo;
    |    address public coo;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |contract Manager {
    |    address public ceo;
  > |    address public cfo;
    |    address public coo;
    |    address public cao;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    address public ceo;
    |    address public cfo;
  > |    address public coo;
    |    address public cao;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    address public cfo;
    |    address public coo;
  > |    address public cao;
    |
    |    event OwnershipTransferred(address indexed previousCeo, address indexed newCeo);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    * @param newCeo The address to transfer ownership to.
    |    */
  > |    function demiseCEO(address newCeo) public onlyCEO {
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
    |        cfo = newCfo;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
    |        coo = newCoo;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
    |        cao = newCao;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() onlyCAO whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    * @dev called by the owner to unpause, returns to normal state
    |    */
  > |    function unpause() onlyCAO whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(99)

[33mWarning[0m for DAOConstantGas in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for LockedEther in contract 'SkinBase':
    |    }
    |}
  > |contract SkinBase is Manager {
    |
    |    struct Skin {
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Mapping from skin id to owner
  > |    mapping (uint256 => address) public skinIdToOwner;
    |
    |    // Whether a skin is on sale
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Whether a skin is on sale
  > |    mapping (uint256 => bool) public isOnSale;
    |
    |    // Number of all total valid skins
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Number of skins an account owns
  > |    mapping (address => uint256) public numSkinOfAccounts;
    |
    |    // // Give some skins to init account for unit tests
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Get the i-th skin an account owns, for off-chain usage only
  > |    function skinOfAccountById(address account, uint256 id) external view returns (uint256) {
    |       uint256 count = 0;
    |       uint256 numSkinOfAccount = numSkinOfAccounts[account];
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |
    |contract Manager {
  > |    address public ceo;
    |    address public cfo;
    |    address public coo;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |contract Manager {
    |    address public ceo;
  > |    address public cfo;
    |    address public coo;
    |    address public cao;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    address public ceo;
    |    address public cfo;
  > |    address public coo;
    |    address public cao;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    address public cfo;
    |    address public coo;
  > |    address public cao;
    |
    |    event OwnershipTransferred(address indexed previousCeo, address indexed newCeo);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    * @param newCeo The address to transfer ownership to.
    |    */
  > |    function demiseCEO(address newCeo) public onlyCEO {
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
    |        cfo = newCfo;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
    |        coo = newCoo;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
    |        cao = newCao;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() onlyCAO whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    * @dev called by the owner to unpause, returns to normal state
    |    */
  > |    function unpause() onlyCAO whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    // Number of all total valid skins
    |    // skinId 0 should not correspond to any skin, because skin.mixingWithId==0 indicates not mixing
  > |    uint256 public nextSkinId = 1;  
    |
    |    // Number of skins an account owns
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Get skin by id
  > |    function getSkin(uint256 id) public view returns (uint128, uint64, uint64) {
    |        require(id > 0);
    |        require(id < nextSkinId);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    function withdrawETH() external onlyCAO {
    |        cfo.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(182)

[31mViolation[0m for TODAmount in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[31mViolation[0m for TODReceiver in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnhandledException in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(99)

[31mViolation[0m for DAOConstantGas in contract 'SkinMarket':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(407)

[33mWarning[0m for DAOConstantGas in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for LockedEther in contract 'SkinMarket':
    |}
    |
  > |contract SkinMarket is SkinMix {
    |
    |    // Cut ratio for a transaction
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(337)

[31mViolation[0m for TODAmount in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[31mViolation[0m for TODReceiver in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnhandledException in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnhandledException in contract 'SkinMarket':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(314)

[33mWarning[0m for UnhandledException in contract 'SkinMarket':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(407)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMarket':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMarket':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(407)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        uint256 end = now + 5 minutes;
    |        // uint256 end = now;
  > |        skins[skinAId].cooldownEndTime = uint64(end);
    |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // uint256 end = now;
    |        skins[skinAId].cooldownEndTime = uint64(end);
  > |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Mark skins as in mixing
  > |        skins[skinAId].mixingWithId = uint64(skinBId);
    |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Mark skins as in mixing
    |        skins[skinAId].mixingWithId = uint64(skinBId);
  > |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
    |        // Emit MixStart event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(281)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  > |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  > |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(317)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
  > |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(318)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  > |        nextSkinId++;
    |
    |        // Clear old skins
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Clear old skins
  > |        skinA.mixingWithId = 0;
    |        skinB.mixingWithId = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Clear old skins
    |        skinA.mixingWithId = 0;
  > |        skinB.mixingWithId = 0;
    |
    |        // In order to distinguish created skins in minting with destroyed skins
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // skinIdToOwner[skinAId] = owner;
    |        // skinIdToOwner[skinBId] = owner;
  > |        delete skinIdToOwner[skinAId];
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(328)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // skinIdToOwner[skinBId] = owner;
    |        delete skinIdToOwner[skinAId];
  > |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
    |        numSkinOfAccounts[account] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  > |        numSkinOfAccounts[account] -= 1;
    |
    |        MixSuccess(account, nextSkinId - 1, skinAId, skinBId);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        numSkinOfAccounts[seller] -= 1;
    |        skinIdToOwner[skinId] = msg.sender;
  > |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    // Set mix formula contract address 
    |    function setMixFormulaAddress(address mixFormulaAddress) external onlyCOO {
  > |        mixFormula = MixFormulaInterface(mixFormulaAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    // setPrePaidFee: set advance amount, only owner can call this
    |    function setPrePaidFee(uint256 newPrePaidFee) external onlyCOO {
  > |        prePaidFee = newPrePaidFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Put on sale
  > |        desiredPrice[skinId] = price;
    |        isOnSale[skinId] = true;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Put on sale
    |        desiredPrice[skinId] = price;
  > |        isOnSale[skinId] = true;
    |
    |        // Emit the Approval event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Withdraw
  > |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Withdraw
    |        isOnSale[skinId] = false;
  > |        desiredPrice[skinId] = 0;
    |
    |        // Emit the cancel event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Transfer skin from seller to buyer
  > |        numSkinOfAccounts[seller] -= 1;
    |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Transfer skin from seller to buyer
    |        numSkinOfAccounts[seller] -= 1;
  > |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
  > |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
  > |        desiredPrice[skinId] = 0;
    |
    |        // Emit the buy event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(414)

[31mViolation[0m for DAOConstantGas in contract 'SkinMinting':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(407)

[33mWarning[0m for DAOConstantGas in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for LockedEther in contract 'SkinMinting':
    |}
    |
  > |contract SkinMinting is SkinMarket {
    |
    |    // Limits the number of skins the contract owner can ever create.
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(426)

[31mViolation[0m for TODAmount in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[31mViolation[0m for TODReceiver in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(314)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(407)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |
    |        // Create random skin
  > |        uint128 randomAppearance = mixFormula.randomSkinAppearance(nextSkinId);
    |        // uint128 randomAppearance = 0;
    |        Skin memory newSkin = Skin({appearance: randomAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(531)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |        require(originSkin.mixingWithId == 0);
    |
  > |        uint128 newAppearance = mixFormula.bleachAppearance(originSkin.appearance, attributes);
    |        originSkin.appearance = newAppearance;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(569)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(407)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |
    |        // Create random skin
  > |        uint128 randomAppearance = mixFormula.randomSkinAppearance(nextSkinId);
    |        // uint128 randomAppearance = 0;
    |        Skin memory newSkin = Skin({appearance: randomAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(531)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |        require(originSkin.mixingWithId == 0);
    |
  > |        uint128 newAppearance = mixFormula.bleachAppearance(originSkin.appearance, attributes);
    |        originSkin.appearance = newAppearance;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(569)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        uint256 end = now + 5 minutes;
    |        // uint256 end = now;
  > |        skins[skinAId].cooldownEndTime = uint64(end);
    |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // uint256 end = now;
    |        skins[skinAId].cooldownEndTime = uint64(end);
  > |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Mark skins as in mixing
  > |        skins[skinAId].mixingWithId = uint64(skinBId);
    |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Mark skins as in mixing
    |        skins[skinAId].mixingWithId = uint64(skinBId);
  > |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
    |        // Emit MixStart event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(281)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  > |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  > |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(317)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
  > |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(318)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  > |        nextSkinId++;
    |
    |        // Clear old skins
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Clear old skins
  > |        skinA.mixingWithId = 0;
    |        skinB.mixingWithId = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Clear old skins
    |        skinA.mixingWithId = 0;
  > |        skinB.mixingWithId = 0;
    |
    |        // In order to distinguish created skins in minting with destroyed skins
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // skinIdToOwner[skinAId] = owner;
    |        // skinIdToOwner[skinBId] = owner;
  > |        delete skinIdToOwner[skinAId];
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(328)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // skinIdToOwner[skinBId] = owner;
    |        delete skinIdToOwner[skinAId];
  > |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
    |        numSkinOfAccounts[account] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  > |        numSkinOfAccounts[account] -= 1;
    |
    |        MixSuccess(account, nextSkinId - 1, skinAId, skinBId);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        numSkinOfAccounts[seller] -= 1;
    |        skinIdToOwner[skinId] = msg.sender;
  > |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        if (accountsLastClearTime[msg.sender] == uint256(0)) {
    |            // This account's first time to summon, we do not need to clear summon numbers
  > |            accountsLastClearTime[msg.sender] = now;
    |        } else {
    |            if (accountsLastClearTime[msg.sender] < levelClearTime && now > levelClearTime) {
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        } else {
    |            if (accountsLastClearTime[msg.sender] < levelClearTime && now > levelClearTime) {
  > |                accoutToSummonNum[msg.sender] = 0;
    |                accoutToPayLevel[msg.sender] = 0;
    |                accountsLastClearTime[msg.sender] = now;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(520)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            if (accountsLastClearTime[msg.sender] < levelClearTime && now > levelClearTime) {
    |                accoutToSummonNum[msg.sender] = 0;
  > |                accoutToPayLevel[msg.sender] = 0;
    |                accountsLastClearTime[msg.sender] = now;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(521)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |                accoutToSummonNum[msg.sender] = 0;
    |                accoutToPayLevel[msg.sender] = 0;
  > |                accountsLastClearTime[msg.sender] = now;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        nextSkinId++;
  > |        numSkinOfAccounts[msg.sender] += 1;
    |        
    |        accoutToSummonNum[msg.sender] += 1;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(542)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        numSkinOfAccounts[msg.sender] += 1;
    |        
  > |        accoutToSummonNum[msg.sender] += 1;
    |        
    |        // Handle the paylevel        
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(544)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        if (payLevel < 5) {
    |            if (accoutToSummonNum[msg.sender] >= levelSplits[payLevel]) {
  > |                accoutToPayLevel[msg.sender] = payLevel + 1;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    // Set mix formula contract address 
    |    function setMixFormulaAddress(address mixFormulaAddress) external onlyCOO {
  > |        mixFormula = MixFormulaInterface(mixFormulaAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    // setPrePaidFee: set advance amount, only owner can call this
    |    function setPrePaidFee(uint256 newPrePaidFee) external onlyCOO {
  > |        prePaidFee = newPrePaidFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Put on sale
  > |        desiredPrice[skinId] = price;
    |        isOnSale[skinId] = true;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Put on sale
    |        desiredPrice[skinId] = price;
  > |        isOnSale[skinId] = true;
    |
    |        // Emit the Approval event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Withdraw
  > |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Withdraw
    |        isOnSale[skinId] = false;
  > |        desiredPrice[skinId] = 0;
    |
    |        // Emit the cancel event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Transfer skin from seller to buyer
  > |        numSkinOfAccounts[seller] -= 1;
    |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Transfer skin from seller to buyer
    |        numSkinOfAccounts[seller] -= 1;
  > |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(411)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
  > |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
  > |        desiredPrice[skinId] = 0;
    |
    |        // Emit the buy event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(414)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    // Set price 
    |    function setBaseSummonPrice(uint256 newPrice) external onlyCOO {
  > |        baseSummonPrice = newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |    function setBleachPrice(uint256 newPrice) external onlyCOO {
  > |        bleachPrice = newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // uint128 randomAppearance = mixFormula.randomSkinAppearance();
    |        Skin memory newSkin = Skin({appearance: specifiedAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  > |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = coo;
    |        isOnSale[nextSkinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        Skin memory newSkin = Skin({appearance: specifiedAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  > |        skinIdToOwner[nextSkinId] = coo;
    |        isOnSale[nextSkinId] = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = coo;
  > |        isOnSale[nextSkinId] = false;
    |
    |        // Emit the create event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        putOnSale(nextSkinId, salePrice);
    |
  > |        nextSkinId++;
    |        numSkinOfAccounts[coo] += 1;   
    |        skinCreatedNum += 1;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        nextSkinId++;
  > |        numSkinOfAccounts[coo] += 1;   
    |        skinCreatedNum += 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(493)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        nextSkinId++;
    |        numSkinOfAccounts[coo] += 1;   
  > |        skinCreatedNum += 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    function donateSkin(uint128 specifiedAppearance, address donee) external onlyCOO {
    |        Skin memory newSkin = Skin({appearance: specifiedAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  > |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = donee;
    |        isOnSale[nextSkinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        Skin memory newSkin = Skin({appearance: specifiedAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  > |        skinIdToOwner[nextSkinId] = donee;
    |        isOnSale[nextSkinId] = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = donee;
  > |        isOnSale[nextSkinId] = false;
    |
    |        // Emit the create event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        CreateNewSkin(nextSkinId, donee);
    |
  > |        nextSkinId++;
    |        numSkinOfAccounts[donee] += 1;   
    |        skinCreatedNum += 1;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(507)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        nextSkinId++;
  > |        numSkinOfAccounts[donee] += 1;   
    |        skinCreatedNum += 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        nextSkinId++;
    |        numSkinOfAccounts[donee] += 1;   
  > |        skinCreatedNum += 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(509)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        uint128 newAppearance = mixFormula.bleachAppearance(originSkin.appearance, attributes);
  > |        originSkin.appearance = newAppearance;
    |
    |        // Emit bleach event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        uint256 nextDay = levelClearTime + 1 days;
    |        if (now > nextDay) {
  > |            levelClearTime = nextDay;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(580)

[33mWarning[0m for DAOConstantGas in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for LockedEther in contract 'SkinMix':
    |}
    |
  > |contract SkinMix is SkinBase {
    |
    |    // Mix formula
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(196)

[31mViolation[0m for TODAmount in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[31mViolation[0m for TODReceiver in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnhandledException in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnhandledException in contract 'SkinMix':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMix':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        uint256 end = now + 5 minutes;
    |        // uint256 end = now;
  > |        skins[skinAId].cooldownEndTime = uint64(end);
    |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // uint256 end = now;
    |        skins[skinAId].cooldownEndTime = uint64(end);
  > |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |
    |        // Mark skins as in mixing
  > |        skins[skinAId].mixingWithId = uint64(skinBId);
    |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(280)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // Mark skins as in mixing
    |        skins[skinAId].mixingWithId = uint64(skinBId);
  > |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
    |        // Emit MixStart event
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(281)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  > |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  > |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(317)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
  > |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(318)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  > |        nextSkinId++;
    |
    |        // Clear old skins
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |
    |        // Clear old skins
  > |        skinA.mixingWithId = 0;
    |        skinB.mixingWithId = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // Clear old skins
    |        skinA.mixingWithId = 0;
  > |        skinB.mixingWithId = 0;
    |
    |        // In order to distinguish created skins in minting with destroyed skins
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // skinIdToOwner[skinAId] = owner;
    |        // skinIdToOwner[skinBId] = owner;
  > |        delete skinIdToOwner[skinAId];
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(328)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // skinIdToOwner[skinBId] = owner;
    |        delete skinIdToOwner[skinAId];
  > |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
    |        numSkinOfAccounts[account] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  > |        numSkinOfAccounts[account] -= 1;
    |
    |        MixSuccess(account, nextSkinId - 1, skinAId, skinBId);
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    // Set mix formula contract address 
    |    function setMixFormulaAddress(address mixFormulaAddress) external onlyCOO {
  > |        mixFormula = MixFormulaInterface(mixFormulaAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    // setPrePaidFee: set advance amount, only owner can call this
    |    function setPrePaidFee(uint256 newPrePaidFee) external onlyCOO {
  > |        prePaidFee = newPrePaidFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb6641d34755a19352ff63a31d82a84f981d4d69.sol(217)


