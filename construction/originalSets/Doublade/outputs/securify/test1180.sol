Processing contract: /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol:Administered
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol:ExchangerV3
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol:ITradeableAsset
Processing contract: /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol:IYeekFormula
Processing contract: /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Administered':
    |/* A basic permissions hierarchy (Owner -> Admin -> Everyone else). One owner may appoint and remove any number of admins
    |   and may transfer ownership to another individual address */
  > |contract Administered {
    |    address public creator;
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'Administered':
    |    address public creator;
    |
  > |    mapping (address => bool) public admins;
    |    
    |    constructor()  public {
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'Administered':
    |
    |    //Add an admin with basic privileges. Can be done by any superuser (or the owner)
  > |    function grantAdmin(address newAdmin) onlyOwner  public {
    |        _grantAdmin(newAdmin);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'Administered':
    |
    |    //Transfer ownership
  > |    function changeOwner(address newOwner) onlyOwner public {
    |        creator = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'Administered':
    |
    |    //Remove an admin
  > |    function revokeAdminStatus(address user) onlyOwner public {
    |        admins[user] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'Administered':
    |   and may transfer ownership to another individual address */
    |contract Administered {
  > |    address public creator;
    |
    |    mapping (address => bool) public admins;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Administered':
    |    }
    |
  > |    function _grantAdmin(address newAdmin) internal
    |    {
    |        admins[newAdmin] = true;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'Administered':
    |    function _grantAdmin(address newAdmin) internal
    |    {
  > |        admins[newAdmin] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Administered':
    |    function _grantAdmin(address newAdmin) internal
    |    {
  > |        admins[newAdmin] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Administered':
    |    //Transfer ownership
    |    function changeOwner(address newOwner) onlyOwner public {
  > |        creator = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Administered':
    |    //Remove an admin
    |    function revokeAdminStatus(address user) onlyOwner public {
  > |        admins[user] = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(61)

[33mWarning[0m for DAO in contract 'ExchangerV3':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(seller, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(326)

[33mWarning[0m for DAOConstantGas in contract 'ExchangerV3':
    |     */
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(136)

[33mWarning[0m for DAOConstantGas in contract 'ExchangerV3':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(144)

[33mWarning[0m for DAOConstantGas in contract 'ExchangerV3':
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  > |        msg.sender.transfer(amountInWei); //Always send ether last
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(301)

[33mWarning[0m for DAOConstantGas in contract 'ExchangerV3':
    |
    |        emit Sell(seller, quantity, amountInWei);
  > |        seller.transfer(amountInWei); //Always send ether last
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(332)

[33mWarning[0m for LockedEther in contract 'ExchangerV3':
    |/* The owner deploys it and then adds tokens / ethereum in the desired ratio */
    |
  > |contract ExchangerV3 is Administered, tokenRecipient {
    |    bool public enabled = false;    //Owner can turn off and on
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |    address public creator;
    |
  > |    mapping (address => bool) public admins;
    |    
    |    constructor()  public {
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |
    |    //Add an admin with basic privileges. Can be done by any superuser (or the owner)
  > |    function grantAdmin(address newAdmin) onlyOwner  public {
    |        _grantAdmin(newAdmin);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |
    |    //Transfer ownership
  > |    function changeOwner(address newOwner) onlyOwner public {
    |        creator = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |
    |    //Remove an admin
  > |    function revokeAdminStatus(address user) onlyOwner public {
    |        admins[user] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |     @dev Deposit tokens to the reserve.
    |     */
  > |    function depositTokens(uint amount) onlyOwner public {
    |        tokenContract.transferFrom(msg.sender, this, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |     @dev Withdraw tokens from the reserve
    |     */
  > |    function withdrawTokens(uint amount) onlyOwner public {
    |        tokenContract.transfer(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |     @dev Withdraw ether from the reserve
    |     */
  > |    function withdrawEther(uint amountInWei) onlyOwner public {
    |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(135)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |     * not have liquidity for sells until you have some buys first.
    |     */
  > |    function setVirtualReserveBalance(uint256 amountInWei) onlyAdmin public {
    |        virtualReserveBalance = amountInWei;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |     @dev Get the BUY price based on the order size. Returned as the number of tokens that the amountInWei will buy.
    |     */
  > |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
    |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |     @dev Get the SELL price based on the order size. Returned as amount (in wei) that you'll get for your tokens.
    |     */
  > |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
    |        uint256 saleReturn = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(226)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |     @param minSaleReturn Minimum amount of ether (in wei) you will accept for your tokens
    |     */
  > |    function sell(uint quantity, uint minSaleReturn) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(284)

[31mViolation[0m for MissingInputValidation in contract 'ExchangerV3':
    |
    |    //approveAndCall flow for selling entry point
  > |    function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external {
    |        //not needed: if it was the wrong token, the tx fails anyways require(_token == address(tokenContract));
    |        sellOneStep(_value, 0, _from);
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(306)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |   and may transfer ownership to another individual address */
    |contract Administered {
  > |    address public creator;
    |
    |    mapping (address => bool) public admins;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |    }
    |
  > |    function _grantAdmin(address newAdmin) internal
    |    {
    |        admins[newAdmin] = true;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |
    |contract ExchangerV3 is Administered, tokenRecipient {
  > |    bool public enabled = false;    //Owner can turn off and on
    |
    |    //The token which is being bought and sold
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |
    |    //The token which is being bought and sold
  > |    ITradeableAsset public tokenContract;
    |    //The contract that does the calculations to determine buy and sell pricing
    |    IYeekFormula public formulaContract;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |    ITradeableAsset public tokenContract;
    |    //The contract that does the calculations to determine buy and sell pricing
  > |    IYeekFormula public formulaContract;
    |    //The reserve pct of this exchanger, expressed in ppm
    |    uint32 public weight;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |    IYeekFormula public formulaContract;
    |    //The reserve pct of this exchanger, expressed in ppm
  > |    uint32 public weight;
    |    //The fee, in ppm
    |    uint32 public fee=5000; //0.5%
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |    uint32 public weight;
    |    //The fee, in ppm
  > |    uint32 public fee=5000; //0.5%
    |    //The portion of the total supply that is not currently (e.g. not yet issued) or not ever (e.g. burned) in circulation
    |    //The formula calculates prices based on a circulating supply which is: total supply - uncirculated supply - reserve supply (balance of exchanger)
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |    //The portion of the total supply that is not currently (e.g. not yet issued) or not ever (e.g. burned) in circulation
    |    //The formula calculates prices based on a circulating supply which is: total supply - uncirculated supply - reserve supply (balance of exchanger)
  > |    uint256 public uncirculatedSupplyCount=0;
    |    //Accounting for the fees
    |    uint256 public collectedFees=0;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |    uint256 public uncirculatedSupplyCount=0;
    |    //Accounting for the fees
  > |    uint256 public collectedFees=0;
    |    //If part of the ether reserve is stored offsite for security reasons this variable holds that value
    |    uint256 public virtualReserveBalance=0;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |    uint256 public collectedFees=0;
    |    //If part of the ether reserve is stored offsite for security reasons this variable holds that value
  > |    uint256 public virtualReserveBalance=0;
    |
    |    /** 
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |    @dev Deposit ether to the reserve
    |    */
  > |    function depositEther() onlyOwner public payable {
    |    //return getQuotePrice(); 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |     @dev Withdraw accumulated fees, without disturbing the core reserve
    |     */
  > |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
    |        msg.sender.transfer(amountInWei);
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |     @dev Enable trading
    |     */
  > |    function enable() onlyAdmin public {
    |        enabled = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |      @dev Disable trading
    |     */
  > |    function disable() onlyAdmin public {
    |        enabled = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |      and I'll enforce it at a later point.
    |     */
  > |    function setReserveWeight(uint ppm) onlyAdmin public {
    |        require (ppm>0 && ppm<=1000000);
    |        weight = uint32(ppm);
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |    }
    |
  > |    function setFee(uint ppm) onlyAdmin public {
    |        require (ppm >= 0 && ppm <= 1000000);
    |        fee = uint32(ppm);
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |
    |    /* The number of tokens that are burned, unissued, or otherwise not in circulation */
  > |    function setUncirculatedSupplyCount(uint newValue) onlyAdmin public {
    |        require (newValue > 0);
    |        uncirculatedSupplyCount = uint256(newValue);
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |     returns: [token balance, ether balance - ledger]
    |     */
  > |    function getReserveBalances() public view returns (uint256, uint256) {
    |        return (tokenContract.balanceOf(this), address(this).balance+virtualReserveBalance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'ExchangerV3':
    |     @param minPurchaseReturn The minimum number of tokens you will accept.
    |     */
  > |    function buy(uint minPurchaseReturn) public payable {
    |        uint amount = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(260)

[31mViolation[0m for TODAmount in contract 'ExchangerV3':
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  > |        msg.sender.transfer(amountInWei); //Always send ether last
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(301)

[31mViolation[0m for TODAmount in contract 'ExchangerV3':
    |
    |        emit Sell(seller, quantity, amountInWei);
  > |        seller.transfer(amountInWei); //Always send ether last
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(332)

[33mWarning[0m for TODAmount in contract 'ExchangerV3':
    |     */
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(136)

[33mWarning[0m for TODAmount in contract 'ExchangerV3':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(144)

[33mWarning[0m for TODReceiver in contract 'ExchangerV3':
    |     */
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(136)

[33mWarning[0m for TODReceiver in contract 'ExchangerV3':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(144)

[33mWarning[0m for TODReceiver in contract 'ExchangerV3':
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  > |        msg.sender.transfer(amountInWei); //Always send ether last
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(301)

[33mWarning[0m for TODReceiver in contract 'ExchangerV3':
    |
    |        emit Sell(seller, quantity, amountInWei);
  > |        seller.transfer(amountInWei); //Always send ether last
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(332)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |     */
    |    function depositTokens(uint amount) onlyOwner public {
  > |        tokenContract.transferFrom(msg.sender, this, amount);
    |    }
    |        
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(115)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |     */
    |    function withdrawTokens(uint amount) onlyOwner public {
  > |        tokenContract.transfer(msg.sender, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(129)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |     */
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(136)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(144)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |     */
    |    function getReserveBalances() public view returns (uint256, uint256) {
  > |        return (tokenContract.balanceOf(this), address(this).balance+virtualReserveBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(200)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |     */
    |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
  > |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(208)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
    |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
    |            weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(209)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |        purchaseReturn = (purchaseReturn - ((purchaseReturn * fee) / 1000000));
    |
  > |        if (purchaseReturn > tokenContract.balanceOf(this)){
    |            return tokenContract.balanceOf(this);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(217)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |
    |        if (purchaseReturn > tokenContract.balanceOf(this)){
  > |            return tokenContract.balanceOf(this);
    |        }
    |        return purchaseReturn;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(218)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |     */
    |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
  > |        uint256 saleReturn = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(227)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
    |        uint256 saleReturn = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
    |            weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(228)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |     */
    |    function buy(uint minPurchaseReturn) public payable {
  > |        uint amount = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            (address(this).balance + virtualReserveBalance) - msg.value,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(261)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |    function buy(uint minPurchaseReturn) public payable {
    |        uint amount = formulaContract.calculatePurchaseReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            (address(this).balance + virtualReserveBalance) - msg.value,
    |            weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(262)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |        require (enabled); // ADDED SEMICOLON    
    |        require (amount >= minPurchaseReturn);
  > |        require (tokenContract.balanceOf(this) >= amount);
    |        
    |        //Accounting - so we can pull the fees out without changing the balance
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(271)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |
    |        emit Buy(msg.sender, msg.value, amount);
  > |        tokenContract.transfer(msg.sender, amount);
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(277)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |     */
    |    function sell(uint quantity, uint minSaleReturn) public {
  > |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(285)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |    function sell(uint quantity, uint minSaleReturn) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
    |             weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(286)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(msg.sender, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(296)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  > |        msg.sender.transfer(amountInWei); //Always send ether last
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(301)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |    //which calls receiveApproval above, which calls this funciton
    |    function sellOneStep(uint quantity, uint minSaleReturn, address seller) public {
  > |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(315)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |    function sellOneStep(uint quantity, uint minSaleReturn, address seller) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
    |             weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(316)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(seller, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(326)

[33mWarning[0m for UnhandledException in contract 'ExchangerV3':
    |
    |        emit Sell(seller, quantity, amountInWei);
  > |        seller.transfer(amountInWei); //Always send ether last
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(332)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |    function extractFees(uint amountInWei) onlyAdmin public {
    |        require (amountInWei <= collectedFees);
  > |        msg.sender.transfer(amountInWei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |     */
    |    function depositTokens(uint amount) onlyOwner public {
  > |        tokenContract.transferFrom(msg.sender, this, amount);
    |    }
    |        
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |     */
    |    function withdrawTokens(uint amount) onlyOwner public {
  > |        tokenContract.transfer(msg.sender, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(129)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |     */
    |    function getReserveBalances() public view returns (uint256, uint256) {
  > |        return (tokenContract.balanceOf(this), address(this).balance+virtualReserveBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |     */
    |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
  > |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(208)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |    function getPurchasePrice(uint256 amountInWei) public view returns(uint) {
    |        uint256 purchaseReturn = formulaContract.calculatePurchaseReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
    |            weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |        purchaseReturn = (purchaseReturn - ((purchaseReturn * fee) / 1000000));
    |
  > |        if (purchaseReturn > tokenContract.balanceOf(this)){
    |            return tokenContract.balanceOf(this);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |
    |        if (purchaseReturn > tokenContract.balanceOf(this)){
  > |            return tokenContract.balanceOf(this);
    |        }
    |        return purchaseReturn;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |     */
    |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
  > |        uint256 saleReturn = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |    function getSalePrice(uint256 tokensToSell) public view returns(uint) {
    |        uint256 saleReturn = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            address(this).balance + virtualReserveBalance,
    |            weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |     */
    |    function buy(uint minPurchaseReturn) public payable {
  > |        uint amount = formulaContract.calculatePurchaseReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            (address(this).balance + virtualReserveBalance) - msg.value,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(261)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |    function buy(uint minPurchaseReturn) public payable {
    |        uint amount = formulaContract.calculatePurchaseReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |            (address(this).balance + virtualReserveBalance) - msg.value,
    |            weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |        require (enabled); // ADDED SEMICOLON    
    |        require (amount >= minPurchaseReturn);
  > |        require (tokenContract.balanceOf(this) >= amount);
    |        
    |        //Accounting - so we can pull the fees out without changing the balance
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |
    |        emit Buy(msg.sender, msg.value, amount);
  > |        tokenContract.transfer(msg.sender, amount);
    |    }
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |     */
    |    function sell(uint quantity, uint minSaleReturn) public {
  > |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |    function sell(uint quantity, uint minSaleReturn) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply()- uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
    |             weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(msg.sender, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |    //which calls receiveApproval above, which calls this funciton
    |    function sellOneStep(uint quantity, uint minSaleReturn, address seller) public {
  > |        uint amountInWei = formulaContract.calculateSaleReturn(
    |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |    function sellOneStep(uint quantity, uint minSaleReturn, address seller) public {
    |        uint amountInWei = formulaContract.calculateSaleReturn(
  > |            (tokenContract.totalSupply() - uncirculatedSupplyCount) - tokenContract.balanceOf(this),
    |             address(this).balance + virtualReserveBalance,
    |             weight,
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(316)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |        require (amountInWei >= minSaleReturn);
    |        require (amountInWei <= address(this).balance);
  > |        require (tokenContract.transferFrom(seller, this, quantity));
    |
    |        collectedFees += (amountInWei * fee) / 1000000;
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExchangerV3':
    |     */
    |    function withdrawEther(uint amountInWei) onlyOwner public {
  > |        msg.sender.transfer(amountInWei); //Transfers in wei
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |    function _grantAdmin(address newAdmin) internal
    |    {
  > |        admins[newAdmin] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |     */
    |    function enable() onlyAdmin public {
  > |        enabled = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |     */
    |    function disable() onlyAdmin public {
  > |        enabled = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |    function setReserveWeight(uint ppm) onlyAdmin public {
    |        require (ppm>0 && ppm<=1000000);
  > |        weight = uint32(ppm);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |    function setFee(uint ppm) onlyAdmin public {
    |        require (ppm >= 0 && ppm <= 1000000);
  > |        fee = uint32(ppm);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(174)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |    function setUncirculatedSupplyCount(uint newValue) onlyAdmin public {
    |        require (newValue > 0);
  > |        uncirculatedSupplyCount = uint256(newValue);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |     */
    |    function setVirtualReserveBalance(uint256 amountInWei) onlyAdmin public {
  > |        virtualReserveBalance = amountInWei;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |        
    |        //Accounting - so we can pull the fees out without changing the balance
  > |        collectedFees += (msg.value * fee) / 1000000;
    |
    |        emit Buy(msg.sender, msg.value, amount);
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |        require (tokenContract.transferFrom(msg.sender, this, quantity));
    |
  > |        collectedFees += (amountInWei * fee) / 1000000;
    |
    |        emit Sell(msg.sender, quantity, amountInWei);
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(298)

[31mViolation[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |        require (tokenContract.transferFrom(seller, this, quantity));
    |
  > |        collectedFees += (amountInWei * fee) / 1000000;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |    function _grantAdmin(address newAdmin) internal
    |    {
  > |        admins[newAdmin] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |    //Transfer ownership
    |    function changeOwner(address newOwner) onlyOwner public {
  > |        creator = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'ExchangerV3':
    |    //Remove an admin
    |    function revokeAdminStatus(address user) onlyOwner public {
  > |        admins[user] = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4aa9a9d81c6d01a1da68e769472077b3db5ebd9e.sol(61)


