Processing contract: /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol:Manager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol:MixFormulaInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol:SkinBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol:SkinMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol:SkinMinting
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol:SkinMix
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
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |
    |contract Manager {
  > |    address public ceo;
    |    address public cfo;
    |    address public coo;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |contract Manager {
    |    address public ceo;
  > |    address public cfo;
    |    address public coo;
    |    address public cao;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    address public ceo;
    |    address public cfo;
  > |    address public coo;
    |    address public cao;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    address public cfo;
    |    address public coo;
  > |    address public cao;
    |
    |    event OwnershipTransferred(address indexed previousCeo, address indexed newCeo);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    bool allowTransfer = false;
    |    
  > |    function changeAllowTransferState() public onlyCOO {
    |        if (allowTransfer) {
    |            allowTransfer = false;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    * @param newCeo The address to transfer ownership to.
    |    */
  > |    function demiseCEO(address newCeo) public onlyCEO {
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
    |        cfo = newCfo;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
    |        coo = newCoo;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
    |        cao = newCao;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    }
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() onlyCAO whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Manager':
    |    * @dev called by the owner to unpause, returns to normal state
    |    */
  > |    function unpause() onlyCAO whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    function changeAllowTransferState() public onlyCOO {
    |        if (allowTransfer) {
  > |            allowTransfer = false;
    |        } else {
    |            allowTransfer = true;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |            allowTransfer = false;
    |        } else {
  > |            allowTransfer = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Manager':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(114)

[33mWarning[0m for DAOConstantGas in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for LockedEther in contract 'SkinBase':
    |
    |
  > |contract SkinBase is Manager {
    |
    |    struct Skin {
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Mapping from skin id to owner
  > |    mapping (uint256 => address) public skinIdToOwner;
    |
    |    // Whether a skin is on sale
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Whether a skin is on sale
  > |    mapping (uint256 => bool) public isOnSale;
    |
    |    // Number of all total valid skins
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Number of skins an account owns
  > |    mapping (address => uint256) public numSkinOfAccounts;
    |
    |    event SkinTransfer(address from, address to, uint256 skinId);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Get the i-th skin an account owns, for off-chain usage only
  > |    function skinOfAccountById(address account, uint256 id) external view returns (uint256) {
    |       uint256 count = 0;
    |       uint256 numSkinOfAccount = numSkinOfAccounts[account];
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |    
  > |    function transferP2P(uint256 id, address targetAccount) whenTransferAllowed public {
    |        require(skinIdToOwner[id] == msg.sender);
    |        require(msg.sender != targetAccount);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |
    |contract Manager {
  > |    address public ceo;
    |    address public cfo;
    |    address public coo;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |contract Manager {
    |    address public ceo;
  > |    address public cfo;
    |    address public coo;
    |    address public cao;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    address public ceo;
    |    address public cfo;
  > |    address public coo;
    |    address public cao;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    address public cfo;
    |    address public coo;
  > |    address public cao;
    |
    |    event OwnershipTransferred(address indexed previousCeo, address indexed newCeo);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    bool allowTransfer = false;
    |    
  > |    function changeAllowTransferState() public onlyCOO {
    |        if (allowTransfer) {
    |            allowTransfer = false;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    * @param newCeo The address to transfer ownership to.
    |    */
  > |    function demiseCEO(address newCeo) public onlyCEO {
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
    |        cfo = newCfo;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
    |        coo = newCoo;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
    |        cao = newCao;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() onlyCAO whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    * @dev called by the owner to unpause, returns to normal state
    |    */
  > |    function unpause() onlyCAO whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    // Number of all total valid skins
    |    // skinId 0 should not correspond to any skin, because skin.mixingWithId==0 indicates not mixing
  > |    uint256 public nextSkinId = 1;  
    |
    |    // Number of skins an account owns
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |
    |    // Get skin by id
  > |    function getSkin(uint256 id) public view returns (uint128, uint64, uint64) {
    |        require(id > 0);
    |        require(id < nextSkinId);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(194)

[33mWarning[0m for MissingInputValidation in contract 'SkinBase':
    |    }
    |
  > |    function withdrawETH() external onlyCAO {
    |        cfo.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(201)

[31mViolation[0m for TODAmount in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[31mViolation[0m for TODReceiver in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnhandledException in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinBase':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |        skinIdToOwner[id] = targetAccount;
    |        
  > |        numSkinOfAccounts[msg.sender] -= 1;
    |        numSkinOfAccounts[targetAccount] += 1;
    |        
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    function changeAllowTransferState() public onlyCOO {
    |        if (allowTransfer) {
  > |            allowTransfer = false;
    |        } else {
    |            allowTransfer = true;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |            allowTransfer = false;
    |        } else {
  > |            allowTransfer = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |        require(skinIdToOwner[id] == msg.sender);
    |        require(msg.sender != targetAccount);
  > |        skinIdToOwner[id] = targetAccount;
    |        
    |        numSkinOfAccounts[msg.sender] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinBase':
    |        
    |        numSkinOfAccounts[msg.sender] -= 1;
  > |        numSkinOfAccounts[targetAccount] += 1;
    |        
    |        // emit event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(211)

[31mViolation[0m for DAOConstantGas in contract 'SkinMarket':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(444)

[33mWarning[0m for DAOConstantGas in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for LockedEther in contract 'SkinMarket':
    |}
    |
  > |contract SkinMarket is SkinMix {
    |
    |    // Cut ratio for a transaction
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(370)

[31mViolation[0m for TODAmount in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[31mViolation[0m for TODAmount in contract 'SkinMarket':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(444)

[31mViolation[0m for TODReceiver in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnhandledException in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnhandledException in contract 'SkinMarket':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(347)

[33mWarning[0m for UnhandledException in contract 'SkinMarket':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMarket':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMarket':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMarket':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(444)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        uint256 end = now + 5 minutes;
    |        // uint256 end = now;
  > |        skins[skinAId].cooldownEndTime = uint64(end);
    |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(267)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // uint256 end = now;
    |        skins[skinAId].cooldownEndTime = uint64(end);
  > |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Mark skins as in mixing
  > |        skins[skinAId].mixingWithId = uint64(skinBId);
    |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Mark skins as in mixing
    |        skins[skinAId].mixingWithId = uint64(skinBId);
  > |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
    |        // Emit MixStart event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  > |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(349)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  > |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(350)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
  > |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(351)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  > |        nextSkinId++;
    |
    |        // Clear old skins
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(352)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Clear old skins
  > |        skinA.mixingWithId = 0;
    |        skinB.mixingWithId = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(355)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Clear old skins
    |        skinA.mixingWithId = 0;
  > |        skinB.mixingWithId = 0;
    |
    |        // In order to distinguish created skins in minting with destroyed skins
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(356)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // skinIdToOwner[skinAId] = owner;
    |        // skinIdToOwner[skinBId] = owner;
  > |        delete skinIdToOwner[skinAId];
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(361)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // skinIdToOwner[skinBId] = owner;
    |        delete skinIdToOwner[skinAId];
  > |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
    |        numSkinOfAccounts[account] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(362)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  > |        numSkinOfAccounts[account] -= 1;
    |
    |        MixSuccess(account, nextSkinId - 1, skinAId, skinBId);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        skinIdToOwner[id] = targetAccount;
    |        
  > |        numSkinOfAccounts[msg.sender] -= 1;
    |        numSkinOfAccounts[targetAccount] += 1;
    |        
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        numSkinOfAccounts[seller] -= 1;
    |        skinIdToOwner[skinId] = msg.sender;
  > |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    function changeAllowTransferState() public onlyCOO {
    |        if (allowTransfer) {
  > |            allowTransfer = false;
    |        } else {
    |            allowTransfer = true;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |            allowTransfer = false;
    |        } else {
  > |            allowTransfer = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        require(skinIdToOwner[id] == msg.sender);
    |        require(msg.sender != targetAccount);
  > |        skinIdToOwner[id] = targetAccount;
    |        
    |        numSkinOfAccounts[msg.sender] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        
    |        numSkinOfAccounts[msg.sender] -= 1;
  > |        numSkinOfAccounts[targetAccount] += 1;
    |        
    |        // emit event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    // Set mix formula contract address 
    |    function setMixFormulaAddress(address mixFormulaAddress) external onlyCOO {
  > |        mixFormula = MixFormulaInterface(mixFormulaAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |    // setPrePaidFee: set advance amount, only owner can call this
    |    function setPrePaidFee(uint256 newPrePaidFee) external onlyCOO {
  > |        prePaidFee = newPrePaidFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |    function setTrCut(uint256 newCut) external onlyCOO {
  > |        trCut = uint128(newCut);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Put on sale
  > |        desiredPrice[skinId] = price;
    |        isOnSale[skinId] = true;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Put on sale
    |        desiredPrice[skinId] = price;
  > |        isOnSale[skinId] = true;
    |
    |        // Emit the Approval event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Withdraw
  > |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Withdraw
    |        isOnSale[skinId] = false;
  > |        desiredPrice[skinId] = 0;
    |
    |        // Emit the cancel event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |
    |        // Transfer skin from seller to buyer
  > |        numSkinOfAccounts[seller] -= 1;
    |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        // Transfer skin from seller to buyer
    |        numSkinOfAccounts[seller] -= 1;
  > |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
  > |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMarket':
    |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
  > |        desiredPrice[skinId] = 0;
    |
    |        // Emit the buy event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(451)

[31mViolation[0m for DAOConstantGas in contract 'SkinMinting':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(444)

[33mWarning[0m for DAOConstantGas in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for LockedEther in contract 'SkinMinting':
    |}
    |
  > |contract SkinMinting is SkinMarket {
    |
    |    // Limits the number of skins the contract owner can ever create.
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(463)

[31mViolation[0m for TODAmount in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[31mViolation[0m for TODAmount in contract 'SkinMinting':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(444)

[31mViolation[0m for TODReceiver in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(347)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(444)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |
    |        // Create random skin
  > |        uint128 randomAppearance = mixFormula.randomSkinAppearance(nextSkinId);
    |        // uint128 randomAppearance = 0;
    |        Skin memory newSkin = Skin({appearance: randomAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(581)

[33mWarning[0m for UnhandledException in contract 'SkinMinting':
    |        require(originSkin.mixingWithId == 0);
    |        
  > |        uint128 newAppearance = mixFormula.bleachAppearance(originSkin.appearance, attributes);
    |        originSkin.appearance = newAppearance;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(642)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |        uint256 sellerProceeds = _price - _computeCut(_price);
    |
  > |        seller.transfer(sellerProceeds);
    |
    |        // Transfer skin from seller to buyer
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |
    |        // Create random skin
  > |        uint128 randomAppearance = mixFormula.randomSkinAppearance(nextSkinId);
    |        // uint128 randomAppearance = 0;
    |        Skin memory newSkin = Skin({appearance: randomAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(581)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMinting':
    |        require(originSkin.mixingWithId == 0);
    |        
  > |        uint128 newAppearance = mixFormula.bleachAppearance(originSkin.appearance, attributes);
    |        originSkin.appearance = newAppearance;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(642)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        uint256 end = now + 5 minutes;
    |        // uint256 end = now;
  > |        skins[skinAId].cooldownEndTime = uint64(end);
    |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(267)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // uint256 end = now;
    |        skins[skinAId].cooldownEndTime = uint64(end);
  > |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Mark skins as in mixing
  > |        skins[skinAId].mixingWithId = uint64(skinBId);
    |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Mark skins as in mixing
    |        skins[skinAId].mixingWithId = uint64(skinBId);
  > |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
    |        // Emit MixStart event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  > |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(349)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  > |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(350)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
  > |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(351)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  > |        nextSkinId++;
    |
    |        // Clear old skins
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(352)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Clear old skins
  > |        skinA.mixingWithId = 0;
    |        skinB.mixingWithId = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(355)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Clear old skins
    |        skinA.mixingWithId = 0;
  > |        skinB.mixingWithId = 0;
    |
    |        // In order to distinguish created skins in minting with destroyed skins
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(356)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // skinIdToOwner[skinAId] = owner;
    |        // skinIdToOwner[skinBId] = owner;
  > |        delete skinIdToOwner[skinAId];
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(361)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // skinIdToOwner[skinBId] = owner;
    |        delete skinIdToOwner[skinAId];
  > |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
    |        numSkinOfAccounts[account] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(362)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  > |        numSkinOfAccounts[account] -= 1;
    |
    |        MixSuccess(account, nextSkinId - 1, skinAId, skinBId);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(364)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            newSkin.mixingWithId = 0;
    |            
  > |            skins[nextSkinId] = newSkin;
    |            skinIdToOwner[nextSkinId] = legacyOwner[i];
    |            isOnSale[nextSkinId] = legacyIsOnSale[i];
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(548)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            
    |            skins[nextSkinId] = newSkin;
  > |            skinIdToOwner[nextSkinId] = legacyOwner[i];
    |            isOnSale[nextSkinId] = legacyIsOnSale[i];
    |            desiredPrice[nextSkinId] = legacyDesiredPrice[i];
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(549)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            skins[nextSkinId] = newSkin;
    |            skinIdToOwner[nextSkinId] = legacyOwner[i];
  > |            isOnSale[nextSkinId] = legacyIsOnSale[i];
    |            desiredPrice[nextSkinId] = legacyDesiredPrice[i];
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(550)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            skinIdToOwner[nextSkinId] = legacyOwner[i];
    |            isOnSale[nextSkinId] = legacyIsOnSale[i];
  > |            desiredPrice[nextSkinId] = legacyDesiredPrice[i];
    |    
    |            // Emit the create event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(551)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            CreateNewSkin(nextSkinId, legacyOwner[i]);
    |    
  > |            nextSkinId++;
    |            numSkinOfAccounts[legacyOwner[i]] += 1;   
    |            skinCreatedNum += 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(556)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    
    |            nextSkinId++;
  > |            numSkinOfAccounts[legacyOwner[i]] += 1;   
    |            skinCreatedNum += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(557)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            nextSkinId++;
    |            numSkinOfAccounts[legacyOwner[i]] += 1;   
  > |            skinCreatedNum += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(558)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        
    |        uint128 newAppearance = mixFormula.bleachAppearance(originSkin.appearance, attributes);
  > |        originSkin.appearance = newAppearance;
    |
    |        // Emit bleach event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skinIdToOwner[id] = targetAccount;
    |        
  > |        numSkinOfAccounts[msg.sender] -= 1;
    |        numSkinOfAccounts[targetAccount] += 1;
    |        
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        numSkinOfAccounts[seller] -= 1;
    |        skinIdToOwner[skinId] = msg.sender;
  > |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        if (accountLastClearTime[msg.sender] == uint256(0)) {
    |            // This account's first time to summon, we do not need to clear summon numbers
  > |            accountLastClearTime[msg.sender] = now;
    |        } else {
    |            if (accountLastClearTime[msg.sender] < levelClearTime && now > levelClearTime) {
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(567)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        } else {
    |            if (accountLastClearTime[msg.sender] < levelClearTime && now > levelClearTime) {
  > |                accountToSummonNum[msg.sender] = 0;
    |                accountToPayLevel[msg.sender] = 0;
    |                accountLastClearTime[msg.sender] = now;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            if (accountLastClearTime[msg.sender] < levelClearTime && now > levelClearTime) {
    |                accountToSummonNum[msg.sender] = 0;
  > |                accountToPayLevel[msg.sender] = 0;
    |                accountLastClearTime[msg.sender] = now;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(571)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |                accountToSummonNum[msg.sender] = 0;
    |                accountToPayLevel[msg.sender] = 0;
  > |                accountLastClearTime[msg.sender] = now;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(572)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        nextSkinId++;
  > |        numSkinOfAccounts[msg.sender] += 1;
    |        
    |        accountToSummonNum[msg.sender] += 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(592)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        numSkinOfAccounts[msg.sender] += 1;
    |        
  > |        accountToSummonNum[msg.sender] += 1;
    |        
    |        // Handle the paylevel        
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(594)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        if (payLevel < 5) {
    |            if (accountToSummonNum[msg.sender] >= levelSplits[payLevel]) {
  > |                accountToPayLevel[msg.sender] = payLevel + 1;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(599)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        if (accountLastClearTime[msg.sender] == uint256(0)) {
    |            // This account's first time to summon, we do not need to clear bleach numbers
  > |            accountLastClearTime[msg.sender] = now;
    |        } else {
    |            if (accountLastClearTime[msg.sender] < levelClearTime && now > levelClearTime) {
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(609)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        } else {
    |            if (accountLastClearTime[msg.sender] < levelClearTime && now > levelClearTime) {
  > |                accountToBleachNum[msg.sender] = 0;
    |                accountLastClearTime[msg.sender] = now;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(612)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            if (accountLastClearTime[msg.sender] < levelClearTime && now > levelClearTime) {
    |                accountToBleachNum[msg.sender] = 0;
  > |                accountLastClearTime[msg.sender] = now;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(613)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        require(accountToBleachNum[msg.sender] < bleachDailyLimit);
  > |        accountToBleachNum[msg.sender] += 1;
    |
    |        // Check whether msg.sender is owner of the skin 
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(618)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    function changeAllowTransferState() public onlyCOO {
    |        if (allowTransfer) {
  > |            allowTransfer = false;
    |        } else {
    |            allowTransfer = true;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |            allowTransfer = false;
    |        } else {
  > |            allowTransfer = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        require(skinIdToOwner[id] == msg.sender);
    |        require(msg.sender != targetAccount);
  > |        skinIdToOwner[id] = targetAccount;
    |        
    |        numSkinOfAccounts[msg.sender] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        
    |        numSkinOfAccounts[msg.sender] -= 1;
  > |        numSkinOfAccounts[targetAccount] += 1;
    |        
    |        // emit event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    // Set mix formula contract address 
    |    function setMixFormulaAddress(address mixFormulaAddress) external onlyCOO {
  > |        mixFormula = MixFormulaInterface(mixFormulaAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    // setPrePaidFee: set advance amount, only owner can call this
    |    function setPrePaidFee(uint256 newPrePaidFee) external onlyCOO {
  > |        prePaidFee = newPrePaidFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |    function setTrCut(uint256 newCut) external onlyCOO {
  > |        trCut = uint128(newCut);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Put on sale
  > |        desiredPrice[skinId] = price;
    |        isOnSale[skinId] = true;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Put on sale
    |        desiredPrice[skinId] = price;
  > |        isOnSale[skinId] = true;
    |
    |        // Emit the Approval event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Withdraw
  > |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Withdraw
    |        isOnSale[skinId] = false;
  > |        desiredPrice[skinId] = 0;
    |
    |        // Emit the cancel event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        // Transfer skin from seller to buyer
  > |        numSkinOfAccounts[seller] -= 1;
    |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(447)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // Transfer skin from seller to buyer
    |        numSkinOfAccounts[seller] -= 1;
  > |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skinIdToOwner[skinId] = msg.sender;
    |        numSkinOfAccounts[msg.sender] += 1;
  > |        isOnSale[skinId] = false;
    |        desiredPrice[skinId] = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        numSkinOfAccounts[msg.sender] += 1;
    |        isOnSale[skinId] = false;
  > |        desiredPrice[skinId] = 0;
    |
    |        // Emit the buy event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(451)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |    // Set price 
    |    function setBaseSummonPrice(uint256 newPrice) external onlyCOO {
  > |        baseSummonPrice = newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(507)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |    function setBleachPrice(uint256 newPrice) external onlyCOO {
  > |        bleachPrice = newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(511)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |    function setBleachDailyLimit(uint256 limit) external onlyCOO {
  > |        bleachDailyLimit = limit;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        // uint128 randomAppearance = mixFormula.randomSkinAppearance();
    |        Skin memory newSkin = Skin({appearance: specifiedAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  > |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = coo;
    |        isOnSale[nextSkinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(525)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        Skin memory newSkin = Skin({appearance: specifiedAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  > |        skinIdToOwner[nextSkinId] = coo;
    |        isOnSale[nextSkinId] = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(526)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = coo;
  > |        isOnSale[nextSkinId] = false;
    |
    |        // Emit the create event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        putOnSale(nextSkinId, salePrice);
    |
  > |        nextSkinId++;
    |        numSkinOfAccounts[coo] += 1;   
    |        skinCreatedNum += 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(535)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |
    |        nextSkinId++;
  > |        numSkinOfAccounts[coo] += 1;   
    |        skinCreatedNum += 1;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(536)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        nextSkinId++;
    |        numSkinOfAccounts[coo] += 1;   
  > |        skinCreatedNum += 1;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMinting':
    |        uint256 nextDay = levelClearTime + 1 days;
    |        if (now > nextDay) {
  > |            levelClearTime = nextDay;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(653)

[33mWarning[0m for DAOConstantGas in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for LockedEther in contract 'SkinMix':
    |}
    |
  > |contract SkinMix is SkinBase {
    |
    |    // Mix formula
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(229)

[31mViolation[0m for TODAmount in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[31mViolation[0m for TODReceiver in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnhandledException in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnhandledException in contract 'SkinMix':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(347)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMix':
    |
    |    function withdrawETH() external onlyCAO {
  > |        cfo.transfer(this.balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SkinMix':
    |
    |        // Create new skin
  > |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        uint256 end = now + 5 minutes;
    |        // uint256 end = now;
  > |        skins[skinAId].cooldownEndTime = uint64(end);
    |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(267)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // uint256 end = now;
    |        skins[skinAId].cooldownEndTime = uint64(end);
  > |        skins[skinBId].cooldownEndTime = uint64(end);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |
    |        // Mark skins as in mixing
  > |        skins[skinAId].mixingWithId = uint64(skinBId);
    |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // Mark skins as in mixing
    |        skins[skinAId].mixingWithId = uint64(skinBId);
  > |        skins[skinBId].mixingWithId = uint64(skinAId);
    |
    |        // Emit MixStart event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        uint128 newSkinAppearance = mixFormula.calcNewSkinAppearance(skinA.appearance, skinB.appearance);
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
  > |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(349)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        Skin memory newSkin = Skin({appearance: newSkinAppearance, cooldownEndTime: uint64(now), mixingWithId: 0});
    |        skins[nextSkinId] = newSkin;
  > |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(350)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        skins[nextSkinId] = newSkin;
    |        skinIdToOwner[nextSkinId] = account;
  > |        isOnSale[nextSkinId] = false;
    |        nextSkinId++;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(351)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        skinIdToOwner[nextSkinId] = account;
    |        isOnSale[nextSkinId] = false;
  > |        nextSkinId++;
    |
    |        // Clear old skins
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(352)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |
    |        // Clear old skins
  > |        skinA.mixingWithId = 0;
    |        skinB.mixingWithId = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(355)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // Clear old skins
    |        skinA.mixingWithId = 0;
  > |        skinB.mixingWithId = 0;
    |
    |        // In order to distinguish created skins in minting with destroyed skins
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(356)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // skinIdToOwner[skinAId] = owner;
    |        // skinIdToOwner[skinBId] = owner;
  > |        delete skinIdToOwner[skinAId];
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(361)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        // skinIdToOwner[skinBId] = owner;
    |        delete skinIdToOwner[skinAId];
  > |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
    |        numSkinOfAccounts[account] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(362)

[31mViolation[0m for UnrestrictedWrite in contract 'SkinMix':
    |        delete skinIdToOwner[skinBId];
    |        // require(numSkinOfAccounts[account] >= 2);
  > |        numSkinOfAccounts[account] -= 1;
    |
    |        MixSuccess(account, nextSkinId - 1, skinAId, skinBId);
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |        skinIdToOwner[id] = targetAccount;
    |        
  > |        numSkinOfAccounts[msg.sender] -= 1;
    |        numSkinOfAccounts[targetAccount] += 1;
    |        
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    function changeAllowTransferState() public onlyCOO {
    |        if (allowTransfer) {
  > |            allowTransfer = false;
    |        } else {
    |            allowTransfer = true;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |            allowTransfer = false;
    |        } else {
  > |            allowTransfer = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |        require(newCeo != address(0));
    |        OwnershipTransferred(ceo, newCeo);
  > |        ceo = newCeo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    function setCFO(address newCfo) public onlyCEO {
    |        require(newCfo != address(0));
  > |        cfo = newCfo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    function setCOO(address newCoo) public onlyCEO {
    |        require(newCoo != address(0));
  > |        coo = newCoo;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    function setCAO(address newCao) public onlyCEO {
    |        require(newCao != address(0));
  > |        cao = newCao;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    */
    |    function pause() onlyCAO whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    */
    |    function unpause() onlyCAO whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |        require(skinIdToOwner[id] == msg.sender);
    |        require(msg.sender != targetAccount);
  > |        skinIdToOwner[id] = targetAccount;
    |        
    |        numSkinOfAccounts[msg.sender] -= 1;
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |        
    |        numSkinOfAccounts[msg.sender] -= 1;
  > |        numSkinOfAccounts[targetAccount] += 1;
    |        
    |        // emit event
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    // Set mix formula contract address 
    |    function setMixFormulaAddress(address mixFormulaAddress) external onlyCOO {
  > |        mixFormula = MixFormulaInterface(mixFormulaAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'SkinMix':
    |    // setPrePaidFee: set advance amount, only owner can call this
    |    function setPrePaidFee(uint256 newPrePaidFee) external onlyCOO {
  > |        prePaidFee = newPrePaidFee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe9aeced8ed2abfa6ac913259eada8e3603d10e67.sol(250)


