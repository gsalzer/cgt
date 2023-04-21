Processing contract: /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol:Kingdom
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Kingdom':
    |    function expandX() public payable{
    |        assert(msg.value >= 300000000000000*(kingdoms[msg.sender].mapY));
  > |        owner.transfer(msg.value);
    |        kingdoms[msg.sender].mapX += 1;
    |        ExpandX(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(176)

[31mViolation[0m for DAOConstantGas in contract 'Kingdom':
    |    function expandY() public payable{
    |        assert(msg.value >= 300000000000000*(kingdoms[msg.sender].mapX));
  > |        owner.transfer(msg.value);
    |        kingdoms[msg.sender].mapY += 1;
    |        ExpandY(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(184)

[31mViolation[0m for DAOConstantGas in contract 'Kingdom':
    |        kingdoms[msg.sender].resources[item] += 1; 
    |        uint cut = msg.value/100;
  > |        owner.transfer(cut*3);
    |        king.transfer(cut);
    |        queen.transfer(cut);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(259)

[31mViolation[0m for DAOConstantGas in contract 'Kingdom':
    |        uint cut = msg.value/100;
    |        owner.transfer(cut*3);
  > |        king.transfer(cut);
    |        queen.transfer(cut);
    |        seller.transfer(msg.value-(cut*5));
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(260)

[31mViolation[0m for DAOConstantGas in contract 'Kingdom':
    |        owner.transfer(cut*3);
    |        king.transfer(cut);
  > |        queen.transfer(cut);
    |        seller.transfer(msg.value-(cut*5));
    |        marketplacePrices[seller][item] = 0;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(261)

[31mViolation[0m for DAOConstantGas in contract 'Kingdom':
    |        king.transfer(cut);
    |        queen.transfer(cut);
  > |        seller.transfer(msg.value-(cut*5));
    |        marketplacePrices[seller][item] = 0;
    |        BuyItem (msg.sender, item, marketplaceID[seller][item]);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(262)

[31mViolation[0m for DAOConstantGas in contract 'Kingdom':
    |            kingdoms[msg.sender].resourceFactors[11] += 16;
    |        }
  > |        owner.transfer(msg.value);
    |        BuildAt(msg.sender, xpos, ypos, building);
    |        //try to claim the throne
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(285)

[31mViolation[0m for MissingInputValidation in contract 'Kingdom':
    |            
    |    //Create buildings list
  > |    function initBuilding(uint r0, uint r1, uint p0, uint p1, uint m, uint a) public {
    |        require(msg.sender == owner);
    |        //resource0, resource1, price0, price1, mapTo, mapAmount
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Kingdom':
    |    
    |    //build building at location (posx,posy)
  > |    function buildAt(uint xpos, uint ypos, uint building) public {
    |        require(kingdoms[msg.sender].resources[buildings[building].resource0] >= buildings[building].price0
    |        &&      kingdoms[msg.sender].resources[buildings[building].resource1] >= buildings[building].price1
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'Kingdom':
    |    //log item clain
    |    event Items(address sender, uint item);
  > |    function claimSpecialResource(uint shopIndex) public {
    |        //can claim every 5 hours - special items
    |        assert(now >= kingdoms[msg.sender].lastClaimItems[shopIndex] + 3 * 1 hours
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'Kingdom':
    |    event BuyItem (address buyer, uint item, uint sell_id);
    |    
  > |    function buyItem (address seller, uint item) public payable {
    |        assert( msg.value >= marketplacePrices[seller][item]
    |                && marketplacePrices[seller][item] > 0
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    }
    |    
  > |    address public owner;
    |    address public king;
    |    uint    public kingSpirit;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    
    |    address public owner;
  > |    address public king;
    |    uint    public kingSpirit;
    |    address public queen;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    address public owner;
    |    address public king;
  > |    uint    public kingSpirit;
    |    address public queen;
    |    uint    public queenPrestige;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    address public king;
    |    uint    public kingSpirit;
  > |    address public queen;
    |    uint    public queenPrestige;
    |    uint    public totalCities;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    uint    public kingSpirit;
    |    address public queen;
  > |    uint    public queenPrestige;
    |    uint    public totalCities;
    |    uint    public buildings_total;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    address public queen;
    |    uint    public queenPrestige;
  > |    uint    public totalCities;
    |    uint    public buildings_total;
    |    uint    public sell_id;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    uint    public queenPrestige;
    |    uint    public totalCities;
  > |    uint    public buildings_total;
    |    uint    public sell_id;
    |    
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    uint    public totalCities;
    |    uint    public buildings_total;
  > |    uint    public sell_id;
    |    
    |    mapping(address => mapping(uint => uint)) marketplacePrices;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    event Resources(address sender, uint food, uint wood, uint stone, uint iron, uint gold);
    |    
  > |    function logResources() public {
    |        Resources(  msg.sender,
    |                    kingdoms[msg.sender].resources[0],
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    }
    |    
  > |    function newLeader() public {
    |        if(kingdoms[msg.sender].resourceFactors[10] > kingSpirit){
    |            kingSpirit = kingdoms[msg.sender].resourceFactors[10];
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    
    |    //initiate user when first visiting
  > |    function initiateUser() public {
    |        if(!kingdoms[msg.sender].initiatet){
    |            kingdoms[msg.sender].initiatet = true;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    
    |    //expand map in direction x
  > |    function expandX() public payable{
    |        assert(msg.value >= 300000000000000*(kingdoms[msg.sender].mapY));
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    
    |    //expand map in direction Y
  > |    function expandY() public payable{
    |        assert(msg.value >= 300000000000000*(kingdoms[msg.sender].mapX));
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'Kingdom':
    |    
    |    //claim resources
  > |    function claimBasicResources() public {
    |        //can claim every 2 hours - basic resources
    |        assert(now >= kingdoms[msg.sender].lastClaimResources + 1 * 1 hours);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(191)

[31mViolation[0m for TODReceiver in contract 'Kingdom':
    |        uint cut = msg.value/100;
    |        owner.transfer(cut*3);
  > |        king.transfer(cut);
    |        queen.transfer(cut);
    |        seller.transfer(msg.value-(cut*5));
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(260)

[31mViolation[0m for TODReceiver in contract 'Kingdom':
    |        owner.transfer(cut*3);
    |        king.transfer(cut);
  > |        queen.transfer(cut);
    |        seller.transfer(msg.value-(cut*5));
    |        marketplacePrices[seller][item] = 0;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(261)

[33mWarning[0m for TODReceiver in contract 'Kingdom':
    |        king.transfer(cut);
    |        queen.transfer(cut);
  > |        seller.transfer(msg.value-(cut*5));
    |        marketplacePrices[seller][item] = 0;
    |        BuyItem (msg.sender, item, marketplaceID[seller][item]);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(262)

[33mWarning[0m for TODReceiver in contract 'Kingdom':
    |            kingdoms[msg.sender].resourceFactors[11] += 16;
    |        }
  > |        owner.transfer(msg.value);
    |        BuildAt(msg.sender, xpos, ypos, building);
    |        //try to claim the throne
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(285)

[33mWarning[0m for UnhandledException in contract 'Kingdom':
    |    function expandX() public payable{
    |        assert(msg.value >= 300000000000000*(kingdoms[msg.sender].mapY));
  > |        owner.transfer(msg.value);
    |        kingdoms[msg.sender].mapX += 1;
    |        ExpandX(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(176)

[33mWarning[0m for UnhandledException in contract 'Kingdom':
    |    function expandY() public payable{
    |        assert(msg.value >= 300000000000000*(kingdoms[msg.sender].mapX));
  > |        owner.transfer(msg.value);
    |        kingdoms[msg.sender].mapY += 1;
    |        ExpandY(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(184)

[33mWarning[0m for UnhandledException in contract 'Kingdom':
    |        kingdoms[msg.sender].resources[item] += 1; 
    |        uint cut = msg.value/100;
  > |        owner.transfer(cut*3);
    |        king.transfer(cut);
    |        queen.transfer(cut);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(259)

[33mWarning[0m for UnhandledException in contract 'Kingdom':
    |        uint cut = msg.value/100;
    |        owner.transfer(cut*3);
  > |        king.transfer(cut);
    |        queen.transfer(cut);
    |        seller.transfer(msg.value-(cut*5));
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(260)

[33mWarning[0m for UnhandledException in contract 'Kingdom':
    |        owner.transfer(cut*3);
    |        king.transfer(cut);
  > |        queen.transfer(cut);
    |        seller.transfer(msg.value-(cut*5));
    |        marketplacePrices[seller][item] = 0;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(261)

[33mWarning[0m for UnhandledException in contract 'Kingdom':
    |        king.transfer(cut);
    |        queen.transfer(cut);
  > |        seller.transfer(msg.value-(cut*5));
    |        marketplacePrices[seller][item] = 0;
    |        BuyItem (msg.sender, item, marketplaceID[seller][item]);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(262)

[33mWarning[0m for UnhandledException in contract 'Kingdom':
    |            kingdoms[msg.sender].resourceFactors[11] += 16;
    |        }
  > |        owner.transfer(msg.value);
    |        BuildAt(msg.sender, xpos, ypos, building);
    |        //try to claim the throne
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'Kingdom':
    |        queen.transfer(cut);
    |        seller.transfer(msg.value-(cut*5));
  > |        marketplacePrices[seller][item] = 0;
    |        BuyItem (msg.sender, item, marketplaceID[seller][item]);
    |        logResources();
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |    function initiateUser() public {
    |        if(!kingdoms[msg.sender].initiatet){
  > |            kingdoms[msg.sender].initiatet = true;
    |            kingdoms[msg.sender].resources[0] = 5;
    |            kingdoms[msg.sender].resources[1] = 5;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        if(!kingdoms[msg.sender].initiatet){
    |            kingdoms[msg.sender].initiatet = true;
  > |            kingdoms[msg.sender].resources[0] = 5;
    |            kingdoms[msg.sender].resources[1] = 5;
    |            kingdoms[msg.sender].resources[2] = 5;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |            kingdoms[msg.sender].initiatet = true;
    |            kingdoms[msg.sender].resources[0] = 5;
  > |            kingdoms[msg.sender].resources[1] = 5;
    |            kingdoms[msg.sender].resources[2] = 5;
    |            kingdoms[msg.sender].resources[3] = 5;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |            kingdoms[msg.sender].resources[0] = 5;
    |            kingdoms[msg.sender].resources[1] = 5;
  > |            kingdoms[msg.sender].resources[2] = 5;
    |            kingdoms[msg.sender].resources[3] = 5;
    |            kingdoms[msg.sender].resources[4] = 5;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |            kingdoms[msg.sender].resources[1] = 5;
    |            kingdoms[msg.sender].resources[2] = 5;
  > |            kingdoms[msg.sender].resources[3] = 5;
    |            kingdoms[msg.sender].resources[4] = 5;
    |            kingdoms[msg.sender].mapX = 6;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |            kingdoms[msg.sender].resources[2] = 5;
    |            kingdoms[msg.sender].resources[3] = 5;
  > |            kingdoms[msg.sender].resources[4] = 5;
    |            kingdoms[msg.sender].mapX = 6;
    |            kingdoms[msg.sender].mapY = 6;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |            kingdoms[msg.sender].resources[3] = 5;
    |            kingdoms[msg.sender].resources[4] = 5;
  > |            kingdoms[msg.sender].mapX = 6;
    |            kingdoms[msg.sender].mapY = 6;
    |            totalCities += 1;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |            kingdoms[msg.sender].resources[4] = 5;
    |            kingdoms[msg.sender].mapX = 6;
  > |            kingdoms[msg.sender].mapY = 6;
    |            totalCities += 1;
    |            logResources();
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        &&      kingdoms[msg.sender].map[xpos][ypos] == 0);
    |        
  > |        kingdoms[msg.sender].populationNeeded += 5;
    |        kingdoms[msg.sender].map[xpos][ypos] = building;
    |        kingdoms[msg.sender].resourceFactors[buildings[building].resourceIndex] += buildings[building].resourceAmount;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        
    |        kingdoms[msg.sender].populationNeeded += 5;
  > |        kingdoms[msg.sender].map[xpos][ypos] = building;
    |        kingdoms[msg.sender].resourceFactors[buildings[building].resourceIndex] += buildings[building].resourceAmount;
    |        
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        kingdoms[msg.sender].populationNeeded += 5;
    |        kingdoms[msg.sender].map[xpos][ypos] = building;
  > |        kingdoms[msg.sender].resourceFactors[buildings[building].resourceIndex] += buildings[building].resourceAmount;
    |        
    |        kingdoms[msg.sender].resources[buildings[building].resource0] -= buildings[building].price0;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        kingdoms[msg.sender].resourceFactors[buildings[building].resourceIndex] += buildings[building].resourceAmount;
    |        
  > |        kingdoms[msg.sender].resources[buildings[building].resource0] -= buildings[building].price0;
    |        kingdoms[msg.sender].resources[buildings[building].resource1] -= buildings[building].price1;
    |        
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        
    |        kingdoms[msg.sender].resources[buildings[building].resource0] -= buildings[building].price0;
  > |        kingdoms[msg.sender].resources[buildings[building].resource1] -= buildings[building].price1;
    |        
    |        //try to claim the throne
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        assert(msg.value >= 300000000000000*(kingdoms[msg.sender].mapY));
    |        owner.transfer(msg.value);
  > |        kingdoms[msg.sender].mapX += 1;
    |        ExpandX(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        assert(msg.value >= 300000000000000*(kingdoms[msg.sender].mapX));
    |        owner.transfer(msg.value);
  > |        kingdoms[msg.sender].mapY += 1;
    |        ExpandY(msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        //can claim every 2 hours - basic resources
    |        assert(now >= kingdoms[msg.sender].lastClaimResources + 1 * 1 hours);
  > |        kingdoms[msg.sender].resources[0] += kingdoms[msg.sender].resourceFactors[1];
    |        kingdoms[msg.sender].resources[1] += kingdoms[msg.sender].resourceFactors[2];
    |        kingdoms[msg.sender].resources[2] += kingdoms[msg.sender].resourceFactors[3];
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        assert(now >= kingdoms[msg.sender].lastClaimResources + 1 * 1 hours);
    |        kingdoms[msg.sender].resources[0] += kingdoms[msg.sender].resourceFactors[1];
  > |        kingdoms[msg.sender].resources[1] += kingdoms[msg.sender].resourceFactors[2];
    |        kingdoms[msg.sender].resources[2] += kingdoms[msg.sender].resourceFactors[3];
    |        kingdoms[msg.sender].resources[3] += kingdoms[msg.sender].resourceFactors[4];
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        kingdoms[msg.sender].resources[0] += kingdoms[msg.sender].resourceFactors[1];
    |        kingdoms[msg.sender].resources[1] += kingdoms[msg.sender].resourceFactors[2];
  > |        kingdoms[msg.sender].resources[2] += kingdoms[msg.sender].resourceFactors[3];
    |        kingdoms[msg.sender].resources[3] += kingdoms[msg.sender].resourceFactors[4];
    |        kingdoms[msg.sender].resources[4] += kingdoms[msg.sender].resourceFactors[5];
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        kingdoms[msg.sender].resources[1] += kingdoms[msg.sender].resourceFactors[2];
    |        kingdoms[msg.sender].resources[2] += kingdoms[msg.sender].resourceFactors[3];
  > |        kingdoms[msg.sender].resources[3] += kingdoms[msg.sender].resourceFactors[4];
    |        kingdoms[msg.sender].resources[4] += kingdoms[msg.sender].resourceFactors[5];
    |        kingdoms[msg.sender].lastClaimResources = now;
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        kingdoms[msg.sender].resources[2] += kingdoms[msg.sender].resourceFactors[3];
    |        kingdoms[msg.sender].resources[3] += kingdoms[msg.sender].resourceFactors[4];
  > |        kingdoms[msg.sender].resources[4] += kingdoms[msg.sender].resourceFactors[5];
    |        kingdoms[msg.sender].lastClaimResources = now;
    |        logResources();
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        kingdoms[msg.sender].resources[3] += kingdoms[msg.sender].resourceFactors[4];
    |        kingdoms[msg.sender].resources[4] += kingdoms[msg.sender].resourceFactors[5];
  > |        kingdoms[msg.sender].lastClaimResources = now;
    |        logResources();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |                finalI = ((shopIndex-6)*4)+8;   //
    |            }
  > |            kingdoms[msg.sender].resources[finalI] += 1;
    |            Items(msg.sender, finalI);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |            Items(msg.sender, finalI);
    |        }
  > |        kingdoms[msg.sender].lastClaimItems[shopIndex] = now;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        &&      kingdoms[msg.sender].resources[item] > 0);
    |        
  > |        marketplacePrices[msg.sender][item] = price;
    |        marketplaceID[msg.sender][item] = sell_id;
    |        
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        
    |        marketplacePrices[msg.sender][item] = price;
  > |        marketplaceID[msg.sender][item] = sell_id;
    |        
    |        SellItem(msg.sender, item, price, sell_id);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        );
    |        
  > |        kingdoms[msg.sender].resources[item] += 1; 
    |        uint cut = msg.value/100;
    |        owner.transfer(cut*3);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        &&      kingdoms[msg.sender].map[xpos][ypos] == 0);
    |        
  > |        kingdoms[msg.sender].map[xpos][ypos] = building;
    |        
    |        if (building == 97){
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        
    |        if (building == 97){
  > |            kingdoms[msg.sender].resourceFactors[10] += 8;
    |        }
    |        if (building == 98){
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        }
    |        if (building == 98){
  > |            kingdoms[msg.sender].resourceFactors[11] += 8;
    |        }
    |        if (building == 99){
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        }
    |        if (building == 99){
  > |            kingdoms[msg.sender].resourceFactors[11] += 16;
    |        }
    |        owner.transfer(msg.value);
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        require(msg.sender == owner);
    |        //resource0, resource1, price0, price1, mapTo, mapAmount
  > |        buildings[buildings_total]   = Building(r0,  r1,  p0,  p1,  m,   a); //grass
    |        buildings_total += 1;
    |       /*[0,  0,   0,  0,  0,  0], //grass
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Kingdom':
    |        //resource0, resource1, price0, price1, mapTo, mapAmount
    |        buildings[buildings_total]   = Building(r0,  r1,  p0,  p1,  m,   a); //grass
  > |        buildings_total += 1;
    |       /*[0,  0,   0,  0,  0,  0], //grass
    |         [0,  1,   1,  1,  0,  20], //house
  at /home/jiaming/mavs_srcs/contract@0x3071514ad86d3edf37ea1c5745d49d8ec26d2caa.sol(70)


