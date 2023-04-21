Processing contract: /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol:ProfitContainerAdapter
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol:ShopKeeper
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol:ValueToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol:ValueTrader
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'ProfitContainerAdapter':
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyEther(shop.balanceOf(this));
  > |        assert(profitContainerLocation.call.value(this.balance)());
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(470)

[33mWarning[0m for LockedEther in contract 'ProfitContainerAdapter':
    |
    |//this contract should be holderB in the shopKeeper contract.
  > |contract ProfitContainerAdapter is SafeMath{
    |    
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(433)

[31mViolation[0m for MissingInputValidation in contract 'ProfitContainerAdapter':
    |    }
    |    
  > |    function changeShop(address newShop) owned {
    |        shopLocation = newShop;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(445)

[31mViolation[0m for MissingInputValidation in contract 'ProfitContainerAdapter':
    |    
    |    
  > |    function changeKeeper(address newKeeper) owned {
    |        shopKeeperLocation = newKeeper;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(450)

[31mViolation[0m for MissingInputValidation in contract 'ProfitContainerAdapter':
    |    
    |    
  > |    function changeContainer(address newContainer) owned {
    |        profitContainerLocation = newContainer;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(455)

[31mViolation[0m for MissingInputValidation in contract 'ProfitContainerAdapter':
    |    
    |    //warning: your profit container needs to be able to handle tokens or this is lost forever
  > |    function takeTokenProfits(address token){
    |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(474)

[31mViolation[0m for MissingInputValidation in contract 'ProfitContainerAdapter':
    |    }
    |    
  > |    function giveAwayHoldership(address holderB) owned {
    |        ShopKeeper(shopKeeperLocation).giveAwayOwnership(holderB);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(481)

[31mViolation[0m for MissingInputValidation in contract 'ProfitContainerAdapter':
    |    }
    |    
  > |    function giveAwayOwnership(address newOwner) owned {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(485)

[33mWarning[0m for MissingInputValidation in contract 'ProfitContainerAdapter':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'ProfitContainerAdapter':
    |    }
    |    
  > |    function takeEtherProfits(){
    |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(466)

[31mViolation[0m for TODAmount in contract 'ProfitContainerAdapter':
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyEther(shop.balanceOf(this));
  > |        assert(profitContainerLocation.call.value(this.balance)());
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(470)

[31mViolation[0m for TODReceiver in contract 'ProfitContainerAdapter':
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyEther(shop.balanceOf(this));
  > |        assert(profitContainerLocation.call.value(this.balance)());
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(470)

[33mWarning[0m for UnhandledException in contract 'ProfitContainerAdapter':
    |    
    |    function takeEtherProfits(){
  > |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyEther(shop.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(467)

[33mWarning[0m for UnhandledException in contract 'ProfitContainerAdapter':
    |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
  > |        shop.buyEther(shop.balanceOf(this));
    |        assert(profitContainerLocation.call.value(this.balance)());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(469)

[33mWarning[0m for UnhandledException in contract 'ProfitContainerAdapter':
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyEther(shop.balanceOf(this));
  > |        assert(profitContainerLocation.call.value(this.balance)());
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(470)

[33mWarning[0m for UnhandledException in contract 'ProfitContainerAdapter':
    |    //warning: your profit container needs to be able to handle tokens or this is lost forever
    |    function takeTokenProfits(address token){
  > |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyToken(token,shop.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(475)

[33mWarning[0m for UnhandledException in contract 'ProfitContainerAdapter':
    |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
  > |        shop.buyToken(token,shop.balanceOf(this));
    |        assert(Token(token).transfer(profitContainerLocation,Token(token).balanceOf(this)));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(477)

[33mWarning[0m for UnhandledException in contract 'ProfitContainerAdapter':
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyToken(token,shop.balanceOf(this));
  > |        assert(Token(token).transfer(profitContainerLocation,Token(token).balanceOf(this)));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(478)

[33mWarning[0m for UnhandledException in contract 'ProfitContainerAdapter':
    |    
    |    function giveAwayHoldership(address holderB) owned {
  > |        ShopKeeper(shopKeeperLocation).giveAwayOwnership(holderB);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(482)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProfitContainerAdapter':
    |    
    |    function takeEtherProfits(){
  > |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyEther(shop.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProfitContainerAdapter':
    |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
  > |        shop.buyEther(shop.balanceOf(this));
    |        assert(profitContainerLocation.call.value(this.balance)());
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(469)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProfitContainerAdapter':
    |    //warning: your profit container needs to be able to handle tokens or this is lost forever
    |    function takeTokenProfits(address token){
  > |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyToken(token,shop.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(475)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProfitContainerAdapter':
    |        ShopKeeper(shopKeeperLocation).splitProfits();
    |        ValueTrader shop = ValueTrader(shopLocation);
  > |        shop.buyToken(token,shop.balanceOf(this));
    |        assert(Token(token).transfer(profitContainerLocation,Token(token).balanceOf(this)));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(477)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProfitContainerAdapter':
    |        ValueTrader shop = ValueTrader(shopLocation);
    |        shop.buyToken(token,shop.balanceOf(this));
  > |        assert(Token(token).transfer(profitContainerLocation,Token(token).balanceOf(this)));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(478)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProfitContainerAdapter':
    |    
    |    function giveAwayHoldership(address holderB) owned {
  > |        ShopKeeper(shopKeeperLocation).giveAwayOwnership(holderB);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(482)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.0;
    |
  > |contract SafeMath {
    |  //internals
    |
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(3)

[33mWarning[0m for LockedEther in contract 'ShopKeeper':
    |//fixed amount of (2) holders/managers,
    |//because I'm too lazy to make anything more complex.
  > |contract ShopKeeper is SafeMath{
    |    
    |    ValueTrader public shop;
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(335)

[31mViolation[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function giveAwayOwnership(address newHolder) onlyHolders {
    |        if(msg.sender == holderB){
    |            holderB = newHolder;
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(363)

[31mViolation[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function validateToken(address token_, uint256 bP_, uint256 bL_, uint256 pF_) onlyHolders {
    |        shop.validateToken(token_,bP_,bL_,pF_);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(392)

[31mViolation[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function configureTokenDividend(address token_, bool hD_, address dA_, bytes dD_) onlyA {
    |        shop.configureTokenDividend(token_,hD_,dA_,dD_);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(396)

[31mViolation[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function callDividend(address token_) onlyA {
    |        shop.callDividend(token_);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(400)

[31mViolation[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function invalidateToken(address token_) onlyHolders {
    |        shop.invalidateToken(token_);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(404)

[31mViolation[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function changeOwner(address owner_) onlyA {
    |        if(holderB == holderA){ 
    |            //if holder has full ownership, they can discard this management contract
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(408)

[31mViolation[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function changeShop(address newShop) onlyA {
    |        if(holderB == holderA){
    |            //if holder has full ownership, they can reengage the shop contract
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(416)

[31mViolation[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function changeFee(uint256 tradeFee) onlyHolders {
    |        shop.changeFee(tradeFee);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(423)

[31mViolation[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function changeEtherContract(address eC) onlyHolders {
    |        shop.changeEtherContract(eC);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(427)

[33mWarning[0m for MissingInputValidation in contract 'ShopKeeper':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'ShopKeeper':
    |contract ShopKeeper is SafeMath{
    |    
  > |    ValueTrader public shop;
    |    address holderA; //actually manages the trader, recieves equal share of profits
    |    address holderB; //only recieves manages own profits, (for profit-container type contracts)
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(337)

[33mWarning[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function splitProfits(){
    |        uint256 unprocessedProfit = shop.balanceOf(this);
    |        uint256 equalShare = unprocessedProfit/2;
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(371)

[33mWarning[0m for MissingInputValidation in contract 'ShopKeeper':
    |    //Management interface below
    |    
  > |    function toggleDrain() onlyA {
    |        shop.toggleDrain();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(380)

[33mWarning[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function toggleBurn() onlyA {
    |        shop.toggleBurn();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(384)

[33mWarning[0m for MissingInputValidation in contract 'ShopKeeper':
    |    }
    |    
  > |    function die() onlyA {
    |        shop.die();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(388)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function splitProfits(){
  > |        uint256 unprocessedProfit = shop.balanceOf(this);
    |        uint256 equalShare = unprocessedProfit/2;
    |        assert(shop.transfer(holderA,equalShare));
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(372)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |        uint256 unprocessedProfit = shop.balanceOf(this);
    |        uint256 equalShare = unprocessedProfit/2;
  > |        assert(shop.transfer(holderA,equalShare));
    |        assert(shop.transfer(holderB,equalShare));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(374)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |        uint256 equalShare = unprocessedProfit/2;
    |        assert(shop.transfer(holderA,equalShare));
  > |        assert(shop.transfer(holderB,equalShare));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(375)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function toggleDrain() onlyA {
  > |        shop.toggleDrain();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(381)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function toggleBurn() onlyA {
  > |        shop.toggleBurn();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(385)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function die() onlyA {
  > |        shop.die();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(389)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function validateToken(address token_, uint256 bP_, uint256 bL_, uint256 pF_) onlyHolders {
  > |        shop.validateToken(token_,bP_,bL_,pF_);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(393)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function configureTokenDividend(address token_, bool hD_, address dA_, bytes dD_) onlyA {
  > |        shop.configureTokenDividend(token_,hD_,dA_,dD_);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(397)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function callDividend(address token_) onlyA {
  > |        shop.callDividend(token_);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(401)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function invalidateToken(address token_) onlyHolders {
  > |        shop.invalidateToken(token_);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(405)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |        if(holderB == holderA){ 
    |            //if holder has full ownership, they can discard this management contract
  > |            shop.changeOwner(owner_); 
    |        }
    |        holderA = owner_;
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(411)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function changeFee(uint256 tradeFee) onlyHolders {
  > |        shop.changeFee(tradeFee);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(424)

[33mWarning[0m for UnhandledException in contract 'ShopKeeper':
    |    
    |    function changeEtherContract(address eC) onlyHolders {
  > |        shop.changeEtherContract(eC);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function splitProfits(){
  > |        uint256 unprocessedProfit = shop.balanceOf(this);
    |        uint256 equalShare = unprocessedProfit/2;
    |        assert(shop.transfer(holderA,equalShare));
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(372)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |        uint256 unprocessedProfit = shop.balanceOf(this);
    |        uint256 equalShare = unprocessedProfit/2;
  > |        assert(shop.transfer(holderA,equalShare));
    |        assert(shop.transfer(holderB,equalShare));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(374)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |        uint256 equalShare = unprocessedProfit/2;
    |        assert(shop.transfer(holderA,equalShare));
  > |        assert(shop.transfer(holderB,equalShare));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(375)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function toggleDrain() onlyA {
  > |        shop.toggleDrain();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(381)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function toggleBurn() onlyA {
  > |        shop.toggleBurn();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(385)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function die() onlyA {
  > |        shop.die();
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(389)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function validateToken(address token_, uint256 bP_, uint256 bL_, uint256 pF_) onlyHolders {
  > |        shop.validateToken(token_,bP_,bL_,pF_);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(393)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function configureTokenDividend(address token_, bool hD_, address dA_, bytes dD_) onlyA {
  > |        shop.configureTokenDividend(token_,hD_,dA_,dD_);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(397)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function callDividend(address token_) onlyA {
  > |        shop.callDividend(token_);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(401)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function invalidateToken(address token_) onlyHolders {
  > |        shop.invalidateToken(token_);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(405)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |        if(holderB == holderA){ 
    |            //if holder has full ownership, they can discard this management contract
  > |            shop.changeOwner(owner_); 
    |        }
    |        holderA = owner_;
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function changeFee(uint256 tradeFee) onlyHolders {
  > |        shop.changeFee(tradeFee);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShopKeeper':
    |    
    |    function changeEtherContract(address eC) onlyHolders {
  > |        shop.changeEtherContract(eC);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(428)

[33mWarning[0m for UnrestrictedWrite in contract 'ShopKeeper':
    |    function giveAwayOwnership(address newHolder) onlyHolders {
    |        if(msg.sender == holderB){
  > |            holderB = newHolder;
    |        } else {
    |            holderA = newHolder;
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'ShopKeeper':
    |            holderB = newHolder;
    |        } else {
  > |            holderA = newHolder;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(367)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token {
    |  /// @return total amount of tokens
    |  function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(26)

[33mWarning[0m for LockedEther in contract 'ValueToken':
    |}
    |
  > |contract ValueToken is SafeMath,Token{
    |    
    |    string name = "Value";
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function transfer(address _to, uint256 _value) returns (bool success){
    |        if (balanceOf(msg.sender) >= _value) {
  > |            balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |            balances[_to] = safeAdd(balanceOf(_to), _value);
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |            balances[_to] = safeAdd(balanceOf(_to), _value);
    |            balances[_from] = safeSub(balanceOf(_from), _value);
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function approve(address _spender, uint256 _value) returns (bool success){
    |        if(balances[msg.sender] >= _value){
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc85b0c4874b8f06bfb3f9b65f252d60f962e60b7.sol(104)


