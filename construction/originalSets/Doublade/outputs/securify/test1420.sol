Processing contract: /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol:SportStarMaster
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol:SportStarToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(534)

[33mWarning[0m for DAO in contract 'SportStarMaster':
    |        tokenIndexToPrice[_tokenId] = calculateNextPrice(sellingPrice);
    |
  > |        tokensContract.updateOwner(oldOwner, newOwner, _tokenId);
    |
    |        // Pay previous tokenOwner if owner is not contract
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(478)

[33mWarning[0m for DAOConstantGas in contract 'SportStarMaster':
    |        // Pay previous tokenOwner if owner is not contract
    |        if (oldOwner != address(this)) {
  > |            oldOwner.transfer(payment);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(482)

[33mWarning[0m for DAOConstantGas in contract 'SportStarMaster':
    |        TokenSold(_tokenId, sellingPrice, tokenIndexToPrice[_tokenId], oldOwner, newOwner);
    |
  > |        msg.sender.transfer(purchaseExcess);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(487)

[31mViolation[0m for MissingInputValidation in contract 'SportStarMaster':
    |    // ***** PUBLIC FUNCTIONS ***/
    |
  > |    function getTokenInfo(uint256 _tokenId) public view returns (
    |        address owner,
    |        uint256 price
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(420)

[31mViolation[0m for MissingInputValidation in contract 'SportStarMaster':
    |
    |    // Allows someone to send ether and obtain the token
  > |    function purchase(uint256 _tokenId) public payable {
    |        address oldOwner = tokensContract.ownerOf(_tokenId);
    |        address newOwner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(457)

[31mViolation[0m for MissingInputValidation in contract 'SportStarMaster':
    |    }
    |
  > |    function priceOf(uint256 _tokenId) public view returns (uint256 price) {
    |        return tokenIndexToPrice[_tokenId];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(490)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
  > |    address public ceoAddress;
    |    address public cooAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(345)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |    // The addresses of the accounts (or contracts) that can execute actions within each roles.
    |    address public ceoAddress;
  > |    address public cooAddress;
    |
    |    // The address of tokens contract
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(346)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |
    |    // The address of tokens contract
  > |    SportStarToken public tokensContract;
    |
    |    uint256 public promoCreatedCount;
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(349)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |    SportStarToken public tokensContract;
    |
  > |    uint256 public promoCreatedCount;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(351)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |
    |
  > |    function setTokensContract(address _newTokensContract) public onlyCEO {
    |        require(_newTokensContract != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(394)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |    // ***** PRIVILEGES SETTING FUNCTIONS
    |
  > |    function setCEO(address _newCEO) public onlyCEO {
    |        require(_newCEO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(404)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |    }
    |
  > |    function setCOO(address _newCOO) public onlyCEO {
    |        require(_newCOO != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(410)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |
    |    // @dev Creates a new Token with the given name.
  > |    function createContractToken(string _name) public onlyCOO {
    |        uint256 newTokenId = tokensContract.createToken(_name, address(this));
    |        tokenIndexToPrice[newTokenId] = startingPrice;
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(449)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |    }
    |
  > |    function calculateDevCut (uint256 _price) public view returns (uint256 _devCut) {
    |        if (_price < increaseLimit1) {
    |            return SafeMath.div(SafeMath.mul(_price, 3), 100); // 3%
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(494)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |    }
    |
  > |    function calculateNextPrice (uint256 _price) public view returns (uint256 _nextPrice) {
    |        if (_price < increaseLimit1) {
    |            return SafeMath.div(SafeMath.mul(_price, 200), 97);
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(508)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |
    |    // Safety check on _to address to prevent against an unexpected 0x0 default.
  > |    function _addressNotNull(address _to) private pure returns (bool) {
    |        return _to != address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(527)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |    * @dev Multiplies two numbers, throws on overflow.
    |    */
  > |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(539)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |    * @dev Integer division of two numbers, truncating the quotient.
    |    */
  > |    function div(uint256 a, uint256 b) internal pure returns (uint256) {
    |        // assert(b > 0); // Solidity automatically throws when dividing by 0
    |        uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(551)

[33mWarning[0m for MissingInputValidation in contract 'SportStarMaster':
    |    * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    |    */
  > |    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(561)

[33mWarning[0m for TODReceiver in contract 'SportStarMaster':
    |        TokenSold(_tokenId, sellingPrice, tokenIndexToPrice[_tokenId], oldOwner, newOwner);
    |
  > |        msg.sender.transfer(purchaseExcess);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(487)

[33mWarning[0m for UnhandledException in contract 'SportStarMaster':
    |        uint256 price
    |    ) {
  > |        owner = tokensContract.ownerOf(_tokenId);
    |        price = tokenIndexToPrice[_tokenId];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(424)

[33mWarning[0m for UnhandledException in contract 'SportStarMaster':
    |
    |        promoCreatedCount++;
  > |        uint256 newTokenId = tokensContract.createToken(_name, tokenOwner);
    |        tokenIndexToPrice[newTokenId] = startingPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(442)

[33mWarning[0m for UnhandledException in contract 'SportStarMaster':
    |    // @dev Creates a new Token with the given name.
    |    function createContractToken(string _name) public onlyCOO {
  > |        uint256 newTokenId = tokensContract.createToken(_name, address(this));
    |        tokenIndexToPrice[newTokenId] = startingPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(450)

[33mWarning[0m for UnhandledException in contract 'SportStarMaster':
    |    // Allows someone to send ether and obtain the token
    |    function purchase(uint256 _tokenId) public payable {
  > |        address oldOwner = tokensContract.ownerOf(_tokenId);
    |        address newOwner = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(458)

[33mWarning[0m for UnhandledException in contract 'SportStarMaster':
    |        tokenIndexToPrice[_tokenId] = calculateNextPrice(sellingPrice);
    |
  > |        tokensContract.updateOwner(oldOwner, newOwner, _tokenId);
    |
    |        // Pay previous tokenOwner if owner is not contract
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(478)

[33mWarning[0m for UnhandledException in contract 'SportStarMaster':
    |        // Pay previous tokenOwner if owner is not contract
    |        if (oldOwner != address(this)) {
  > |            oldOwner.transfer(payment);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(482)

[33mWarning[0m for UnhandledException in contract 'SportStarMaster':
    |        TokenSold(_tokenId, sellingPrice, tokenIndexToPrice[_tokenId], oldOwner, newOwner);
    |
  > |        msg.sender.transfer(purchaseExcess);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(487)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SportStarMaster':
    |        uint256 price
    |    ) {
  > |        owner = tokensContract.ownerOf(_tokenId);
    |        price = tokenIndexToPrice[_tokenId];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SportStarMaster':
    |
    |        promoCreatedCount++;
  > |        uint256 newTokenId = tokensContract.createToken(_name, tokenOwner);
    |        tokenIndexToPrice[newTokenId] = startingPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(442)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SportStarMaster':
    |    // @dev Creates a new Token with the given name.
    |    function createContractToken(string _name) public onlyCOO {
  > |        uint256 newTokenId = tokensContract.createToken(_name, address(this));
    |        tokenIndexToPrice[newTokenId] = startingPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(450)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SportStarMaster':
    |    // Allows someone to send ether and obtain the token
    |    function purchase(uint256 _tokenId) public payable {
  > |        address oldOwner = tokensContract.ownerOf(_tokenId);
    |        address newOwner = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(458)

[31mViolation[0m for UnrestrictedWrite in contract 'SportStarMaster':
    |        promoCreatedCount++;
    |        uint256 newTokenId = tokensContract.createToken(_name, tokenOwner);
  > |        tokenIndexToPrice[newTokenId] = startingPrice;
    |
    |        Birth(newTokenId, _name, _owner);
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(443)

[31mViolation[0m for UnrestrictedWrite in contract 'SportStarMaster':
    |    function createContractToken(string _name) public onlyCOO {
    |        uint256 newTokenId = tokensContract.createToken(_name, address(this));
  > |        tokenIndexToPrice[newTokenId] = startingPrice;
    |
    |        Birth(newTokenId, _name, address(this));
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(451)

[31mViolation[0m for UnrestrictedWrite in contract 'SportStarMaster':
    |        uint256 purchaseExcess = SafeMath.sub(msg.value, sellingPrice);
    |
  > |        tokenIndexToPrice[_tokenId] = calculateNextPrice(sellingPrice);
    |
    |        tokensContract.updateOwner(oldOwner, newOwner, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarMaster':
    |        require(_newTokensContract != address(0));
    |
  > |        tokensContract = SportStarToken(_newTokensContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarMaster':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarMaster':
    |        require(_newCOO != address(0));
    |
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarMaster':
    |        }
    |
  > |        promoCreatedCount++;
    |        uint256 newTokenId = tokensContract.createToken(_name, tokenOwner);
    |        tokenIndexToPrice[newTokenId] = startingPrice;
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(441)

[33mWarning[0m for LockedEther in contract 'SportStarToken':
    |
    |
  > |contract SportStarToken is ERC721 {
    |
    |    // ***** EVENTS
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'SportStarToken':
    |
    |
  > |contract SportStarToken is ERC721 {
    |
    |    // ***** EVENTS
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |    function _transfer(address _from, address _to, uint256 _tokenId) private {
    |        // Since the number of tokens is capped to 2^32 we can't overflow this
  > |        ownershipTokenCount[_to]++;
    |        //transfer ownership
    |        tokenIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        // When creating new tokens _from is 0x0, but we can't account that address.
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |            // clear any previously approved ownership exchange
    |            delete tokenIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |            ownershipTokenCount[_from]--;
    |            // clear any previously approved ownership exchange
  > |            delete tokenIndexToApproved[_tokenId];
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |
    |
  > |contract SportStarToken is ERC721 {
    |
    |    // ***** EVENTS
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        require(_newCEO != address(0));
    |
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        require(_newMasterContract != address(0));
    |
  > |        masterContractAddress = _newMasterContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        require(_owns(msg.sender, _tokenId));
    |
  > |        tokenIndexToApproved[_tokenId] = _to;
    |
    |        Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |
    |    function setTokenData(uint256 _tokenId, bytes32 tokenData) public onlyMasterContract {
  > |        tokenIndexToData[_tokenId] = tokenData;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'SportStarToken':
    |        ownershipTokenCount[_to]++;
    |        //transfer ownership
  > |        tokenIndexToOwner[_tokenId] = _to;
    |
    |        // When creating new tokens _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x5a52d88754c5b56c24f4c5e78ebb74ccf1666c87.sol(298)


