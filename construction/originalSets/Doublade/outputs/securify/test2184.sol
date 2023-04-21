Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:ForgeConnection
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:GetTheHorseShoe
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:HorseShoeBasis
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:HorseShoeControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:HorseShoeMinting
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:HorseShoeOwnership
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:HorseShoeShopOwner
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:IronConnect
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol:SmithConnect
[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |            if(_from!=0){
    |                
  > |             _from.transfer(oPrice);
    |            }else{
    |                
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(178)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |            }else{
    |                
  > |             ceoAddress.transfer(oPrice);
    |            }
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(181)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |            }
    |             
  > |             ceoAddress.transfer(Fee);
    |             
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(184)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
    |        HSShopForBiding[_id]=false;
  > |              _to.transfer( msg.value);
    |        }else{
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(223)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |           emit Transfer(_from, _to, _id);
    |            
  > |             ceoAddress.transfer(priceNow);
    |         
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(246)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |             
    |            uint256 buyExcess = msg.value - priceNow;
  > |            _to.transfer(buyExcess);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(250)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for DAOConstantGas in contract 'GetTheHorseShoe':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[33mWarning[0m for LockedEther in contract 'GetTheHorseShoe':
    |
    |
  > |contract GetTheHorseShoe is HorseShoeMinting {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(802)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |            
  > |        function newForgeCon (address newConAddr) external onCTO {
    |            addr_forge = newConAddr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |        }
    |            
  > |        function newRaceDistCon (address newConAddr) external onCTO {
    |            raceDistCon = newConAddr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |    
  > |    mapping (uint256 => address) public HShoeShopO;
    |    
    |    mapping (uint256 => uint256) public HSShopPrice;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    mapping (uint256 => address) public HShoeShopO;
    |    
  > |    mapping (uint256 => uint256) public HSShopPrice;
    |    
    |    mapping (uint256 => bool) public HSShopForSale;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    mapping (uint256 => uint256) public HSShopPrice;
    |    
  > |    mapping (uint256 => bool) public HSShopForSale;
    |    mapping (uint256 => bool) public HSShopForBiding;
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    
    |    mapping (uint256 => bool) public HSShopForSale;
  > |    mapping (uint256 => bool) public HSShopForBiding;
    |    
    |    mapping (address => uint256) HSShopOwnCount;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |      
    |    mapping (uint256 => uint256) startPrice;
  > |    mapping (uint256 => uint256) public priceDecreaseRate;
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    
    |
  > |      function getCurrentItemPrice(uint256 _id) public view returns (uint256)  {
    |    return startPrice[_id] - priceDecreaseRate[_id]*(block.number - startBlock[_id]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |  }
    |    
  > |      function newPriceDecreaseRate(uint DecreRate,uint256 _id) external onlyC   {
    |                priceDecreaseRate[_id]=DecreRate;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    
    |    
  > |    function changeHSShopPrice(uint256 price, uint256 HSShopId) external{
    |        
    |        require(msg.sender==HShoeShopO[HSShopId]);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    
    |    
  > |    function buyHSShop(uint256 id) payable external{
    |        
    |          require(HSShopForSale[id]==true);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |    
  > |    function firstSellHSShop(uint256 _id, uint256 price, uint256 _decreRate) external onlyC {
    |        
    |        require(HShoeShopO[_id]==0);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(195)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |    
  > |    function bid(uint256 _id) payable external{
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(212)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    
    |    
  > |     function setHSShopSaleFee(uint256 val) external onCTO {
    |        HSShopSaleFee = val;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    mapping (uint256 => address) horseShoeOwnerIndex;
    |    
  > |    mapping (uint256 => uint256) public horseShoeIndexPrice;
    |    
    |    mapping (uint256 => uint256) public processingQuality;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(286)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    mapping (uint256 => uint256) public horseShoeIndexPrice;
    |    
  > |    mapping (uint256 => uint256) public processingQuality;
    |    
    |    mapping (uint256 => uint256) public WearOut;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(288)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    mapping (uint256 => uint256) public processingQuality;
    |    
  > |    mapping (uint256 => uint256) public WearOut;
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(290)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    
    | 
  > |    function transfer10( address _to, uint256 _tokenId1, uint256 _tokenId2, uint256 _tokenId3, uint256 _tokenId4, uint256 _tokenId5, uint256 _tokenId6, uint256 _tokenId7, uint256 _tokenId8, uint256 _tokenId9, uint256 _tokenId10  ) external onlyC {
    |     
    |       require(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(319)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |     uint8 public constant decimals = 0; 
    |
  > |    function horseShoeForSale(uint256 _tokenId, uint256 price) external {
    |  
    |     address  ownerof =  horseShoeOwnerIndex[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(527)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |		}
    |		
  > | function changePrice(uint256 _tokenId, uint256 price) external {
    |  
    |     address  ownerof =  horseShoeOwnerIndex[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(535)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |		}
    |
  > | function horseShoeNotForSale(uint256 _tokenId) external {
    |         address  ownerof =  horseShoeOwnerIndex[_tokenId];
    |            require(ownerof == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(546)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |
  > |    function balanceOf(address _owner) public view returns (uint256 count) {
    |        return tokenOwnershipCount[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(559)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |
  > |    function transfer(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(563)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |
  > |    function approve(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(578)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _tokenId ) external payable {
    |        
    |        if(_from != msg.sender){
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(589)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId)  external view returns (address owner)  {
    |        owner = horseShoeOwnerIndex[_tokenId];
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(611)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |    
  > |    function ownerOfID(uint256 _tokenId)  external view returns (address owner, uint256 tokenId)  {
    |        owner = horseShoeOwnerIndex[_tokenId];
    |tokenId=_tokenId;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(618)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |
  > |       function horseShoeFS(uint256 _tokenId) external view  returns (bool buyable, uint256 tokenId) {
    |        buyable = horseShoeIndexForSale[_tokenId];
    |        tokenId=_tokenId;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(625)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |	
  > |	function horseShoePr(uint256 _tokenId) external view  returns (uint256 price, uint256 tokenId) {
    |        price = horseShoeIndexPrice[_tokenId];
    |        tokenId=_tokenId;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(632)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |
  > | function setSaleFee(uint256 val) external onCTO {
    |        saleFee = val;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(639)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |
  > |function raceOut(uint256 _tokenIdA) external {
    |    
    |    require(msg.sender==raceDistCon);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(644)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |}
    |
  > |function meltHorseShoe(uint256 _tokenId, address owner) external{
    |  
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(663)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |}
    |
  > |function raceRegistration(uint256 _tokenIdA, address owner) external {
    |    
    |  //  require(msg.sender==raceDistCon);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(687)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |
  > |    function createHorseShoe4(uint256 _genes2,uint256 _genes3,uint256 _genes2a,uint256 _genes3a, uint256 _genes2b,uint256 _genes3b,uint256 _genes2c,uint256 _genes3c, address _owner) external onlyC {
    |        address horseShoeOwner = _owner;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(724)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |    
  > |        function createHorseShoe1(uint256 _genes2,uint256 _genes3, address _owner) external onlyC {
    |        address horseShoeOwner = _owner;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(742)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |    
  > |    function createHorseShoe10(uint256 _genes2,uint256 _genes3,uint256 _genes2a,uint256 _genes3a, uint256 _genes2b,uint256 _genes3b,uint256 _genes2c,uint256 _genes3c, uint256 _genes2d,uint256 _genes3d, address _owner) external onlyC {
    |        address horseShoeOwner = _owner;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(754)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |  
    |    
  > |       function _generateNewHorseShoe(uint256 smith_quality ,uint256 maschine_quality, address _owner) external {
    |    
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(788)

[31mViolation[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |
  > |    function getHorseShoe(uint256 _id)
    |        external
    |        view
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(805)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |contract HorseShoeControl  {
    |
  > |    address public ceoAddress=0xC6F3Fb72db068C96A1D50Bbc3D370cC8e4af0bFc;
    |    address public ctoAddress=0x73A895C06D6E3DcCA3acE48FC8801E17eD247f85;
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |    address public ceoAddress=0xC6F3Fb72db068C96A1D50Bbc3D370cC8e4af0bFc;
  > |    address public ctoAddress=0x73A895C06D6E3DcCA3acE48FC8801E17eD247f85;
    | 
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    
    |    
  > |    address public raceDistCon;
    |        
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |        
    |
  > |    address public addr_forge;
    |   
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    mapping (address => uint256) HSShopOwnCount;
    |    
  > |     uint256 public HSShopSaleFee = 20;
    |   
    |  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |
  > |  uint256 public saleFee = 20;
    |   
    |   
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    | 
  > |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |    
  > |    function _sell(address _from,  uint256 _tokenId, uint256 value) internal {
    |     
    |     if(horseShoeIndexForSale[_tokenId]==true){
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    
    |	
  > |    function _newHorseShoe(
    |        uint256 _genes1,
    |        uint256 _genes2,
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(440)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |contract HorseShoeOwnership is HorseShoeBasis{
    |
  > |  string public constant  name = "CryptoHorseShoe";
    |    string public constant symbol = "CHS";
    |     uint8 public constant decimals = 0; 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(523)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |  string public constant  name = "CryptoHorseShoe";
  > |    string public constant symbol = "CHS";
    |     uint8 public constant decimals = 0; 
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(524)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |  string public constant  name = "CryptoHorseShoe";
    |    string public constant symbol = "CHS";
  > |     uint8 public constant decimals = 0; 
    |
    |    function horseShoeForSale(uint256 _tokenId, uint256 price) external {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(525)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |
  > |    function _owns(address _applicant, uint256 _tokenId) internal view returns (bool) {
    |        return horseShoeOwnerIndex[_tokenId] == _applicant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(554)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return horseShoes.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(607)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |contract HorseShoeMinting is HorseShoeOwnership {
    |
  > |    uint256 public  HShoe_Limit = 160000;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(721)

[33mWarning[0m for MissingInputValidation in contract 'GetTheHorseShoe':
    |
    |
  > |contract GetTheHorseShoe is HorseShoeMinting {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(802)

[31mViolation[0m for TODAmount in contract 'GetTheHorseShoe':
    |            if(_from!=0){
    |                
  > |             _from.transfer(oPrice);
    |            }else{
    |                
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(178)

[31mViolation[0m for TODAmount in contract 'GetTheHorseShoe':
    |            }else{
    |                
  > |             ceoAddress.transfer(oPrice);
    |            }
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(181)

[31mViolation[0m for TODAmount in contract 'GetTheHorseShoe':
    |            }
    |             
  > |             ceoAddress.transfer(Fee);
    |             
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(184)

[31mViolation[0m for TODAmount in contract 'GetTheHorseShoe':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[31mViolation[0m for TODAmount in contract 'GetTheHorseShoe':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[31mViolation[0m for TODAmount in contract 'GetTheHorseShoe':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[31mViolation[0m for TODAmount in contract 'GetTheHorseShoe':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[31mViolation[0m for TODAmount in contract 'GetTheHorseShoe':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[31mViolation[0m for TODAmount in contract 'GetTheHorseShoe':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for TODReceiver in contract 'GetTheHorseShoe':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[33mWarning[0m for TODReceiver in contract 'GetTheHorseShoe':
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
    |        HSShopForBiding[_id]=false;
  > |              _to.transfer( msg.value);
    |        }else{
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(223)

[33mWarning[0m for TODReceiver in contract 'GetTheHorseShoe':
    |             
    |            uint256 buyExcess = msg.value - priceNow;
  > |            _to.transfer(buyExcess);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(250)

[33mWarning[0m for TODReceiver in contract 'GetTheHorseShoe':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for TODReceiver in contract 'GetTheHorseShoe':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for TODReceiver in contract 'GetTheHorseShoe':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for TODReceiver in contract 'GetTheHorseShoe':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |            if(_from!=0){
    |                
  > |             _from.transfer(oPrice);
    |            }else{
    |                
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(178)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |            }else{
    |                
  > |             ceoAddress.transfer(oPrice);
    |            }
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(181)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |            }
    |             
  > |             ceoAddress.transfer(Fee);
    |             
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(184)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
    |        HSShopForBiding[_id]=false;
  > |              _to.transfer( msg.value);
    |        }else{
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(223)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |           emit Transfer(_from, _to, _id);
    |            
  > |             ceoAddress.transfer(priceNow);
    |         
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(246)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |             
    |            uint256 buyExcess = msg.value - priceNow;
  > |            _to.transfer(buyExcess);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(250)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for UnhandledException in contract 'GetTheHorseShoe':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetTheHorseShoe':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetTheHorseShoe':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetTheHorseShoe':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetTheHorseShoe':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetTheHorseShoe':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetTheHorseShoe':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GetTheHorseShoe':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            HSShopOwnCount[_to]++;
    |            
  > |            HShoeShopO[id] = _to;
    |            
    |            HSShopForSale[id]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            HShoeShopO[id] = _to;
    |            
  > |            HSShopForSale[id]=false;
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            
    |            
  > |                HSShopOwnCount[_from]--;
    |               
    |           emit Transfer(_from, _to, id);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
  > |        HSShopForBiding[_id]=false;
    |              _to.transfer( msg.value);
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            
    |        
  > |        HSShopForBiding[_id]=false;
    |        
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            HSShopOwnCount[_to]++;
    |            
  > |            HShoeShopO[_id] = _to;
    |            
    |            HSShopForSale[_id]=true;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            HShoeShopO[_id] = _to;
    |            
  > |            HSShopForSale[_id]=true;
    |            
    |            uint256 priceAufschlag=msg.value/3;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            
    |            
  > |   HSShopPrice[_id]=msg.value+ priceAufschlag;
    |               
    |           emit Transfer(_from, _to, _id);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    | 
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
  > |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(307)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        
    |        if (_from != address(0)) {
  > |            tokenOwnershipCount[_from]--;
    |         
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(310)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            address _to = msg.sender;
    |            
  > |            tokenOwnershipCount[_to]++;
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(375)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            
    |            tokenOwnershipCount[_to]++;
  > |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
    |            horseShoeIndexForSale[_tokenId]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(376)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  > |            horseShoeIndexForSale[_tokenId]=false;
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(378)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            
    |            if (_from != address(0)) {
  > |                tokenOwnershipCount[_from]--;
    |               
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(382)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |       uint256 newHorseShoeId;
    |	   
  > |     newHorseShoeId = horseShoes.push(_horseShoe)-1;
    |     
    |  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(467)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |
    |
  > |        WearOut[newHorseShoeId]=_genes1;
    |        
    |        processingQuality[newHorseShoeId]= (_genes2 + _genes3)/2;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(473)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        WearOut[newHorseShoeId]=_genes1;
    |        
  > |        processingQuality[newHorseShoeId]= (_genes2 + _genes3)/2;
    |        
    |        raceListed[newHorseShoeId]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(475)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        processingQuality[newHorseShoeId]= (_genes2 + _genes3)/2;
    |        
  > |        raceListed[newHorseShoeId]=false;
    |        
    |       emit Birth(_owner, newHorseShoeId);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(477)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |		
    |    
  > |    horseshoeA.dna4=false;
    |    
    |    raceListed[_tokenIdA]=true;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(704)

[31mViolation[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |    horseshoeA.dna4=false;
    |    
  > |    raceListed[_tokenIdA]=true;
    |	
    |	
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            address _from = HShoeShopO[id];
    |            
  > |            HSShopOwnCount[_to]++;
    |            
    |            HShoeShopO[id] = _to;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            address _from = HShoeShopO[_id];
    |            
  > |            HSShopOwnCount[_to]++;
    |            
    |            HShoeShopO[_id] = _to;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    | 
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
  > |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        
    |        if (_from != address(0)) {
  > |            tokenOwnershipCount[_from]--;
    |         
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            address _to = msg.sender;
    |            
  > |            tokenOwnershipCount[_to]++;
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            
    |            tokenOwnershipCount[_to]++;
  > |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
    |            horseShoeIndexForSale[_tokenId]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  > |            horseShoeIndexForSale[_tokenId]=false;
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            
    |            if (_from != address(0)) {
  > |                tokenOwnershipCount[_from]--;
    |               
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            
    |        function newForgeCon (address newConAddr) external onCTO {
  > |            addr_forge = newConAddr;
    |            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |            
    |        function newRaceDistCon (address newConAddr) external onCTO {
  > |            raceDistCon = newConAddr;
    |            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |    
    |      function newPriceDecreaseRate(uint DecreRate,uint256 _id) external onlyC   {
  > |                priceDecreaseRate[_id]=DecreRate;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        require(price!=0);
    |        
  > |        HSShopPrice[HSShopId]=price;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        require(HShoeShopO[_id]==0);
    |        
  > |        HSShopPrice[_id]=price;
    |        
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        
    |            
  > |                HSShopForBiding[_id]=true;
    |                
    |                  startBlock[_id] = block.number;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |                HSShopForBiding[_id]=true;
    |                
  > |                  startBlock[_id] = block.number;
    |                  
    |                  startPrice[_id] = price;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |                  startBlock[_id] = block.number;
    |                  
  > |                  startPrice[_id] = price;
    |                  
    |                 priceDecreaseRate[_id]= _decreRate;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |                  startPrice[_id] = price;
    |                  
  > |                 priceDecreaseRate[_id]= _decreRate;
    |                
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |    
    |     function setHSShopSaleFee(uint256 val) external onCTO {
  > |        HSShopSaleFee = val;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    | 
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
  > |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |       uint256 newHorseShoeId;
    |	   
  > |     newHorseShoeId = horseShoes.push(_horseShoe)-1;
    |     
    |  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |     address  ownerof =  horseShoeOwnerIndex[_tokenId];
    |        require(ownerof == msg.sender);
  > |        horseShoeIndexPrice[_tokenId] = price;
    |        horseShoeIndexForSale[_tokenId]= true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(531)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        require(ownerof == msg.sender);
    |        horseShoeIndexPrice[_tokenId] = price;
  > |        horseShoeIndexForSale[_tokenId]= true;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |       
    |             
  > |              horseShoeIndexPrice[_tokenId] = price;
    |         
    |		}
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(542)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |         address  ownerof =  horseShoeOwnerIndex[_tokenId];
    |            require(ownerof == msg.sender);
  > |        horseShoeIndexForSale[_tokenId]= false;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |
    | function setSaleFee(uint256 val) external onCTO {
  > |        saleFee = val;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(640)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |      HorseShoe storage horseshoeA = horseShoes[_tokenIdA];
    |    
  > |    horseshoeA.dna4=true;
    |    
    |	  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(653)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |    
    |	  
  > |       WearOut[_tokenIdA] = WearOut[_tokenIdA]+1;
    |	  
    |	  raceListed[_tokenIdA]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |       WearOut[_tokenIdA] = WearOut[_tokenIdA]+1;
    |	  
  > |	  raceListed[_tokenIdA]=false;
    |    
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |   
    |        
  > |            horseShoeIndexForSale[_tokenId]=false;
    |        horseShoeOwnerIndex[_tokenId]=0x00;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        
    |            horseShoeIndexForSale[_tokenId]=false;
  > |        horseShoeOwnerIndex[_tokenId]=0x00;
    |        
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(671)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        
    |      
  > |       tokenOwnershipCount[owner]--;
    |        
    |        //iron totalsupply less?
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(674)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |        
    |         HorseShoe storage horseshoe = horseShoes[_tokenId];
  > |        horseshoe.dna5 = true;
    |      horseshoe.dna4 = false;
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(681)

[33mWarning[0m for UnrestrictedWrite in contract 'GetTheHorseShoe':
    |         HorseShoe storage horseshoe = horseShoes[_tokenId];
    |        horseshoe.dna5 = true;
  > |      horseshoe.dna4 = false;
    |      
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(682)

[33mWarning[0m for LockedEther in contract 'HorseShoeControl':
    |
    |
  > |contract HorseShoeControl  {
    |
    |    address public ceoAddress=0xC6F3Fb72db068C96A1D50Bbc3D370cC8e4af0bFc;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeControl':
    |
    |            
  > |        function newForgeCon (address newConAddr) external onCTO {
    |            addr_forge = newConAddr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeControl':
    |        }
    |            
  > |        function newRaceDistCon (address newConAddr) external onCTO {
    |            raceDistCon = newConAddr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(91)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeControl':
    |contract HorseShoeControl  {
    |
  > |    address public ceoAddress=0xC6F3Fb72db068C96A1D50Bbc3D370cC8e4af0bFc;
    |    address public ctoAddress=0x73A895C06D6E3DcCA3acE48FC8801E17eD247f85;
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeControl':
    |
    |    address public ceoAddress=0xC6F3Fb72db068C96A1D50Bbc3D370cC8e4af0bFc;
  > |    address public ctoAddress=0x73A895C06D6E3DcCA3acE48FC8801E17eD247f85;
    | 
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeControl':
    |    
    |    
  > |    address public raceDistCon;
    |        
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeControl':
    |        
    |
  > |    address public addr_forge;
    |   
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeControl':
    |            
    |        function newForgeCon (address newConAddr) external onCTO {
  > |            addr_forge = newConAddr;
    |            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeControl':
    |            
    |        function newRaceDistCon (address newConAddr) external onCTO {
  > |            raceDistCon = newConAddr;
    |            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(92)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |            if(_from!=0){
    |                
  > |             _from.transfer(oPrice);
    |            }else{
    |                
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(178)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |            }else{
    |                
  > |             ceoAddress.transfer(oPrice);
    |            }
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(181)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |            }
    |             
  > |             ceoAddress.transfer(Fee);
    |             
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(184)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
    |        HSShopForBiding[_id]=false;
  > |              _to.transfer( msg.value);
    |        }else{
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(223)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |           emit Transfer(_from, _to, _id);
    |            
  > |             ceoAddress.transfer(priceNow);
    |         
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(246)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |             
    |            uint256 buyExcess = msg.value - priceNow;
  > |            _to.transfer(buyExcess);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(250)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeMinting':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[33mWarning[0m for LockedEther in contract 'HorseShoeMinting':
    |
    |
  > |contract HorseShoeMinting is HorseShoeOwnership {
    |
    |    uint256 public  HShoe_Limit = 160000;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(719)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |            
  > |        function newForgeCon (address newConAddr) external onCTO {
    |            addr_forge = newConAddr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |        }
    |            
  > |        function newRaceDistCon (address newConAddr) external onCTO {
    |            raceDistCon = newConAddr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |    
  > |    mapping (uint256 => address) public HShoeShopO;
    |    
    |    mapping (uint256 => uint256) public HSShopPrice;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    mapping (uint256 => address) public HShoeShopO;
    |    
  > |    mapping (uint256 => uint256) public HSShopPrice;
    |    
    |    mapping (uint256 => bool) public HSShopForSale;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    mapping (uint256 => uint256) public HSShopPrice;
    |    
  > |    mapping (uint256 => bool) public HSShopForSale;
    |    mapping (uint256 => bool) public HSShopForBiding;
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    
    |    mapping (uint256 => bool) public HSShopForSale;
  > |    mapping (uint256 => bool) public HSShopForBiding;
    |    
    |    mapping (address => uint256) HSShopOwnCount;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |      
    |    mapping (uint256 => uint256) startPrice;
  > |    mapping (uint256 => uint256) public priceDecreaseRate;
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    
    |
  > |      function getCurrentItemPrice(uint256 _id) public view returns (uint256)  {
    |    return startPrice[_id] - priceDecreaseRate[_id]*(block.number - startBlock[_id]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |  }
    |    
  > |      function newPriceDecreaseRate(uint DecreRate,uint256 _id) external onlyC   {
    |                priceDecreaseRate[_id]=DecreRate;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    
    |    
  > |    function changeHSShopPrice(uint256 price, uint256 HSShopId) external{
    |        
    |        require(msg.sender==HShoeShopO[HSShopId]);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    
    |    
  > |    function buyHSShop(uint256 id) payable external{
    |        
    |          require(HSShopForSale[id]==true);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |    
  > |    function firstSellHSShop(uint256 _id, uint256 price, uint256 _decreRate) external onlyC {
    |        
    |        require(HShoeShopO[_id]==0);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(195)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |    
  > |    function bid(uint256 _id) payable external{
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(212)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    
    |    
  > |     function setHSShopSaleFee(uint256 val) external onCTO {
    |        HSShopSaleFee = val;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    mapping (uint256 => address) horseShoeOwnerIndex;
    |    
  > |    mapping (uint256 => uint256) public horseShoeIndexPrice;
    |    
    |    mapping (uint256 => uint256) public processingQuality;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(286)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    mapping (uint256 => uint256) public horseShoeIndexPrice;
    |    
  > |    mapping (uint256 => uint256) public processingQuality;
    |    
    |    mapping (uint256 => uint256) public WearOut;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(288)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    mapping (uint256 => uint256) public processingQuality;
    |    
  > |    mapping (uint256 => uint256) public WearOut;
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(290)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    
    | 
  > |    function transfer10( address _to, uint256 _tokenId1, uint256 _tokenId2, uint256 _tokenId3, uint256 _tokenId4, uint256 _tokenId5, uint256 _tokenId6, uint256 _tokenId7, uint256 _tokenId8, uint256 _tokenId9, uint256 _tokenId10  ) external onlyC {
    |     
    |       require(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(319)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |     uint8 public constant decimals = 0; 
    |
  > |    function horseShoeForSale(uint256 _tokenId, uint256 price) external {
    |  
    |     address  ownerof =  horseShoeOwnerIndex[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(527)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |		}
    |		
  > | function changePrice(uint256 _tokenId, uint256 price) external {
    |  
    |     address  ownerof =  horseShoeOwnerIndex[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(535)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |		}
    |
  > | function horseShoeNotForSale(uint256 _tokenId) external {
    |         address  ownerof =  horseShoeOwnerIndex[_tokenId];
    |            require(ownerof == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(546)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |
  > |    function balanceOf(address _owner) public view returns (uint256 count) {
    |        return tokenOwnershipCount[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(559)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |
  > |    function transfer(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(563)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |
  > |    function approve(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(578)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _tokenId ) external payable {
    |        
    |        if(_from != msg.sender){
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(589)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId)  external view returns (address owner)  {
    |        owner = horseShoeOwnerIndex[_tokenId];
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(611)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |    
  > |    function ownerOfID(uint256 _tokenId)  external view returns (address owner, uint256 tokenId)  {
    |        owner = horseShoeOwnerIndex[_tokenId];
    |tokenId=_tokenId;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(618)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |
  > |       function horseShoeFS(uint256 _tokenId) external view  returns (bool buyable, uint256 tokenId) {
    |        buyable = horseShoeIndexForSale[_tokenId];
    |        tokenId=_tokenId;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(625)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |	
  > |	function horseShoePr(uint256 _tokenId) external view  returns (uint256 price, uint256 tokenId) {
    |        price = horseShoeIndexPrice[_tokenId];
    |        tokenId=_tokenId;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(632)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |
  > | function setSaleFee(uint256 val) external onCTO {
    |        saleFee = val;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(639)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |
  > |function raceOut(uint256 _tokenIdA) external {
    |    
    |    require(msg.sender==raceDistCon);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(644)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |}
    |
  > |function meltHorseShoe(uint256 _tokenId, address owner) external{
    |  
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(663)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |}
    |
  > |function raceRegistration(uint256 _tokenIdA, address owner) external {
    |    
    |  //  require(msg.sender==raceDistCon);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(687)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |
  > |    function createHorseShoe4(uint256 _genes2,uint256 _genes3,uint256 _genes2a,uint256 _genes3a, uint256 _genes2b,uint256 _genes3b,uint256 _genes2c,uint256 _genes3c, address _owner) external onlyC {
    |        address horseShoeOwner = _owner;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(724)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |    
  > |        function createHorseShoe1(uint256 _genes2,uint256 _genes3, address _owner) external onlyC {
    |        address horseShoeOwner = _owner;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(742)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |    
  > |    function createHorseShoe10(uint256 _genes2,uint256 _genes3,uint256 _genes2a,uint256 _genes3a, uint256 _genes2b,uint256 _genes3b,uint256 _genes2c,uint256 _genes3c, uint256 _genes2d,uint256 _genes3d, address _owner) external onlyC {
    |        address horseShoeOwner = _owner;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(754)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |  
    |    
  > |       function _generateNewHorseShoe(uint256 smith_quality ,uint256 maschine_quality, address _owner) external {
    |    
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(788)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |contract HorseShoeControl  {
    |
  > |    address public ceoAddress=0xC6F3Fb72db068C96A1D50Bbc3D370cC8e4af0bFc;
    |    address public ctoAddress=0x73A895C06D6E3DcCA3acE48FC8801E17eD247f85;
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |    address public ceoAddress=0xC6F3Fb72db068C96A1D50Bbc3D370cC8e4af0bFc;
  > |    address public ctoAddress=0x73A895C06D6E3DcCA3acE48FC8801E17eD247f85;
    | 
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    
    |    
  > |    address public raceDistCon;
    |        
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |        
    |
  > |    address public addr_forge;
    |   
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    mapping (address => uint256) HSShopOwnCount;
    |    
  > |     uint256 public HSShopSaleFee = 20;
    |   
    |  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |
  > |  uint256 public saleFee = 20;
    |   
    |   
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    | 
  > |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |    
  > |    function _sell(address _from,  uint256 _tokenId, uint256 value) internal {
    |     
    |     if(horseShoeIndexForSale[_tokenId]==true){
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    
    |	
  > |    function _newHorseShoe(
    |        uint256 _genes1,
    |        uint256 _genes2,
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(440)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |contract HorseShoeOwnership is HorseShoeBasis{
    |
  > |  string public constant  name = "CryptoHorseShoe";
    |    string public constant symbol = "CHS";
    |     uint8 public constant decimals = 0; 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(523)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |  string public constant  name = "CryptoHorseShoe";
  > |    string public constant symbol = "CHS";
    |     uint8 public constant decimals = 0; 
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(524)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |  string public constant  name = "CryptoHorseShoe";
    |    string public constant symbol = "CHS";
  > |     uint8 public constant decimals = 0; 
    |
    |    function horseShoeForSale(uint256 _tokenId, uint256 price) external {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(525)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |
  > |    function _owns(address _applicant, uint256 _tokenId) internal view returns (bool) {
    |        return horseShoeOwnerIndex[_tokenId] == _applicant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(554)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return horseShoes.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(607)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |
    |
  > |contract HorseShoeMinting is HorseShoeOwnership {
    |
    |    uint256 public  HShoe_Limit = 160000;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(719)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeMinting':
    |contract HorseShoeMinting is HorseShoeOwnership {
    |
  > |    uint256 public  HShoe_Limit = 160000;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(721)

[31mViolation[0m for TODAmount in contract 'HorseShoeMinting':
    |            if(_from!=0){
    |                
  > |             _from.transfer(oPrice);
    |            }else{
    |                
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(178)

[31mViolation[0m for TODAmount in contract 'HorseShoeMinting':
    |            }else{
    |                
  > |             ceoAddress.transfer(oPrice);
    |            }
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(181)

[31mViolation[0m for TODAmount in contract 'HorseShoeMinting':
    |            }
    |             
  > |             ceoAddress.transfer(Fee);
    |             
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(184)

[31mViolation[0m for TODAmount in contract 'HorseShoeMinting':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[31mViolation[0m for TODAmount in contract 'HorseShoeMinting':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[31mViolation[0m for TODAmount in contract 'HorseShoeMinting':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[31mViolation[0m for TODAmount in contract 'HorseShoeMinting':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[31mViolation[0m for TODAmount in contract 'HorseShoeMinting':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[31mViolation[0m for TODAmount in contract 'HorseShoeMinting':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for TODReceiver in contract 'HorseShoeMinting':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[33mWarning[0m for TODReceiver in contract 'HorseShoeMinting':
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
    |        HSShopForBiding[_id]=false;
  > |              _to.transfer( msg.value);
    |        }else{
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(223)

[33mWarning[0m for TODReceiver in contract 'HorseShoeMinting':
    |             
    |            uint256 buyExcess = msg.value - priceNow;
  > |            _to.transfer(buyExcess);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(250)

[33mWarning[0m for TODReceiver in contract 'HorseShoeMinting':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for TODReceiver in contract 'HorseShoeMinting':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for TODReceiver in contract 'HorseShoeMinting':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for TODReceiver in contract 'HorseShoeMinting':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |            if(_from!=0){
    |                
  > |             _from.transfer(oPrice);
    |            }else{
    |                
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(178)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |            }else{
    |                
  > |             ceoAddress.transfer(oPrice);
    |            }
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(181)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |            }
    |             
  > |             ceoAddress.transfer(Fee);
    |             
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(184)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
    |        HSShopForBiding[_id]=false;
  > |              _to.transfer( msg.value);
    |        }else{
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(223)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |           emit Transfer(_from, _to, _id);
    |            
  > |             ceoAddress.transfer(priceNow);
    |         
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(246)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |             
    |            uint256 buyExcess = msg.value - priceNow;
  > |            _to.transfer(buyExcess);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(250)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for UnhandledException in contract 'HorseShoeMinting':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeMinting':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeMinting':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeMinting':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeMinting':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeMinting':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeMinting':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeMinting':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            HSShopOwnCount[_to]++;
    |            
  > |            HShoeShopO[id] = _to;
    |            
    |            HSShopForSale[id]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            HShoeShopO[id] = _to;
    |            
  > |            HSShopForSale[id]=false;
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            
    |            
  > |                HSShopOwnCount[_from]--;
    |               
    |           emit Transfer(_from, _to, id);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
  > |        HSShopForBiding[_id]=false;
    |              _to.transfer( msg.value);
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            
    |        
  > |        HSShopForBiding[_id]=false;
    |        
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            HSShopOwnCount[_to]++;
    |            
  > |            HShoeShopO[_id] = _to;
    |            
    |            HSShopForSale[_id]=true;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            HShoeShopO[_id] = _to;
    |            
  > |            HSShopForSale[_id]=true;
    |            
    |            uint256 priceAufschlag=msg.value/3;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            
    |            
  > |   HSShopPrice[_id]=msg.value+ priceAufschlag;
    |               
    |           emit Transfer(_from, _to, _id);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    | 
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
  > |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(307)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        
    |        if (_from != address(0)) {
  > |            tokenOwnershipCount[_from]--;
    |         
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(310)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            address _to = msg.sender;
    |            
  > |            tokenOwnershipCount[_to]++;
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(375)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            
    |            tokenOwnershipCount[_to]++;
  > |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
    |            horseShoeIndexForSale[_tokenId]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(376)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  > |            horseShoeIndexForSale[_tokenId]=false;
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(378)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            
    |            if (_from != address(0)) {
  > |                tokenOwnershipCount[_from]--;
    |               
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(382)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |       uint256 newHorseShoeId;
    |	   
  > |     newHorseShoeId = horseShoes.push(_horseShoe)-1;
    |     
    |  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(467)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |
    |
  > |        WearOut[newHorseShoeId]=_genes1;
    |        
    |        processingQuality[newHorseShoeId]= (_genes2 + _genes3)/2;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(473)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        WearOut[newHorseShoeId]=_genes1;
    |        
  > |        processingQuality[newHorseShoeId]= (_genes2 + _genes3)/2;
    |        
    |        raceListed[newHorseShoeId]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(475)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        processingQuality[newHorseShoeId]= (_genes2 + _genes3)/2;
    |        
  > |        raceListed[newHorseShoeId]=false;
    |        
    |       emit Birth(_owner, newHorseShoeId);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(477)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |		
    |    
  > |    horseshoeA.dna4=false;
    |    
    |    raceListed[_tokenIdA]=true;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(704)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |    horseshoeA.dna4=false;
    |    
  > |    raceListed[_tokenIdA]=true;
    |	
    |	
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            address _from = HShoeShopO[id];
    |            
  > |            HSShopOwnCount[_to]++;
    |            
    |            HShoeShopO[id] = _to;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            address _from = HShoeShopO[_id];
    |            
  > |            HSShopOwnCount[_to]++;
    |            
    |            HShoeShopO[_id] = _to;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    | 
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
  > |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        
    |        if (_from != address(0)) {
  > |            tokenOwnershipCount[_from]--;
    |         
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            address _to = msg.sender;
    |            
  > |            tokenOwnershipCount[_to]++;
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            
    |            tokenOwnershipCount[_to]++;
  > |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
    |            horseShoeIndexForSale[_tokenId]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  > |            horseShoeIndexForSale[_tokenId]=false;
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            
    |            if (_from != address(0)) {
  > |                tokenOwnershipCount[_from]--;
    |               
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            
    |        function newForgeCon (address newConAddr) external onCTO {
  > |            addr_forge = newConAddr;
    |            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |            
    |        function newRaceDistCon (address newConAddr) external onCTO {
  > |            raceDistCon = newConAddr;
    |            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |    
    |      function newPriceDecreaseRate(uint DecreRate,uint256 _id) external onlyC   {
  > |                priceDecreaseRate[_id]=DecreRate;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        require(price!=0);
    |        
  > |        HSShopPrice[HSShopId]=price;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        require(HShoeShopO[_id]==0);
    |        
  > |        HSShopPrice[_id]=price;
    |        
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        
    |            
  > |                HSShopForBiding[_id]=true;
    |                
    |                  startBlock[_id] = block.number;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |                HSShopForBiding[_id]=true;
    |                
  > |                  startBlock[_id] = block.number;
    |                  
    |                  startPrice[_id] = price;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |                  startBlock[_id] = block.number;
    |                  
  > |                  startPrice[_id] = price;
    |                  
    |                 priceDecreaseRate[_id]= _decreRate;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |                  startPrice[_id] = price;
    |                  
  > |                 priceDecreaseRate[_id]= _decreRate;
    |                
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |    
    |     function setHSShopSaleFee(uint256 val) external onCTO {
  > |        HSShopSaleFee = val;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    | 
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
  > |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |       uint256 newHorseShoeId;
    |	   
  > |     newHorseShoeId = horseShoes.push(_horseShoe)-1;
    |     
    |  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(467)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |     address  ownerof =  horseShoeOwnerIndex[_tokenId];
    |        require(ownerof == msg.sender);
  > |        horseShoeIndexPrice[_tokenId] = price;
    |        horseShoeIndexForSale[_tokenId]= true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(531)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        require(ownerof == msg.sender);
    |        horseShoeIndexPrice[_tokenId] = price;
  > |        horseShoeIndexForSale[_tokenId]= true;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |       
    |             
  > |              horseShoeIndexPrice[_tokenId] = price;
    |         
    |		}
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(542)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |         address  ownerof =  horseShoeOwnerIndex[_tokenId];
    |            require(ownerof == msg.sender);
  > |        horseShoeIndexForSale[_tokenId]= false;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |
    | function setSaleFee(uint256 val) external onCTO {
  > |        saleFee = val;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(640)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |      HorseShoe storage horseshoeA = horseShoes[_tokenIdA];
    |    
  > |    horseshoeA.dna4=true;
    |    
    |	  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(653)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |    
    |	  
  > |       WearOut[_tokenIdA] = WearOut[_tokenIdA]+1;
    |	  
    |	  raceListed[_tokenIdA]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |       WearOut[_tokenIdA] = WearOut[_tokenIdA]+1;
    |	  
  > |	  raceListed[_tokenIdA]=false;
    |    
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |   
    |        
  > |            horseShoeIndexForSale[_tokenId]=false;
    |        horseShoeOwnerIndex[_tokenId]=0x00;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        
    |            horseShoeIndexForSale[_tokenId]=false;
  > |        horseShoeOwnerIndex[_tokenId]=0x00;
    |        
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(671)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        
    |      
  > |       tokenOwnershipCount[owner]--;
    |        
    |        //iron totalsupply less?
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(674)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |        
    |         HorseShoe storage horseshoe = horseShoes[_tokenId];
  > |        horseshoe.dna5 = true;
    |      horseshoe.dna4 = false;
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(681)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeMinting':
    |         HorseShoe storage horseshoe = horseShoes[_tokenId];
    |        horseshoe.dna5 = true;
  > |      horseshoe.dna4 = false;
    |      
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(682)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |            if(_from!=0){
    |                
  > |             _from.transfer(oPrice);
    |            }else{
    |                
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(178)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |            }else{
    |                
  > |             ceoAddress.transfer(oPrice);
    |            }
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(181)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |            }
    |             
  > |             ceoAddress.transfer(Fee);
    |             
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(184)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
    |        HSShopForBiding[_id]=false;
  > |              _to.transfer( msg.value);
    |        }else{
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(223)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |           emit Transfer(_from, _to, _id);
    |            
  > |             ceoAddress.transfer(priceNow);
    |         
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(246)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |             
    |            uint256 buyExcess = msg.value - priceNow;
  > |            _to.transfer(buyExcess);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(250)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for DAOConstantGas in contract 'HorseShoeOwnership':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[33mWarning[0m for LockedEther in contract 'HorseShoeOwnership':
    |
    |
  > |contract HorseShoeOwnership is HorseShoeBasis{
    |
    |  string public constant  name = "CryptoHorseShoe";
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(521)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    |            
  > |        function newForgeCon (address newConAddr) external onCTO {
    |            addr_forge = newConAddr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |        }
    |            
  > |        function newRaceDistCon (address newConAddr) external onCTO {
    |            raceDistCon = newConAddr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    |    
  > |    mapping (uint256 => address) public HShoeShopO;
    |    
    |    mapping (uint256 => uint256) public HSShopPrice;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    mapping (uint256 => address) public HShoeShopO;
    |    
  > |    mapping (uint256 => uint256) public HSShopPrice;
    |    
    |    mapping (uint256 => bool) public HSShopForSale;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    mapping (uint256 => uint256) public HSShopPrice;
    |    
  > |    mapping (uint256 => bool) public HSShopForSale;
    |    mapping (uint256 => bool) public HSShopForBiding;
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    
    |    mapping (uint256 => bool) public HSShopForSale;
  > |    mapping (uint256 => bool) public HSShopForBiding;
    |    
    |    mapping (address => uint256) HSShopOwnCount;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |      
    |    mapping (uint256 => uint256) startPrice;
  > |    mapping (uint256 => uint256) public priceDecreaseRate;
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    
    |
  > |      function getCurrentItemPrice(uint256 _id) public view returns (uint256)  {
    |    return startPrice[_id] - priceDecreaseRate[_id]*(block.number - startBlock[_id]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |  }
    |    
  > |      function newPriceDecreaseRate(uint DecreRate,uint256 _id) external onlyC   {
    |                priceDecreaseRate[_id]=DecreRate;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    
    |    
  > |    function changeHSShopPrice(uint256 price, uint256 HSShopId) external{
    |        
    |        require(msg.sender==HShoeShopO[HSShopId]);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    
    |    
  > |    function buyHSShop(uint256 id) payable external{
    |        
    |          require(HSShopForSale[id]==true);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    |    
  > |    function firstSellHSShop(uint256 _id, uint256 price, uint256 _decreRate) external onlyC {
    |        
    |        require(HShoeShopO[_id]==0);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(195)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |    
  > |    function bid(uint256 _id) payable external{
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(212)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    
    |    
  > |     function setHSShopSaleFee(uint256 val) external onCTO {
    |        HSShopSaleFee = val;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    mapping (uint256 => address) horseShoeOwnerIndex;
    |    
  > |    mapping (uint256 => uint256) public horseShoeIndexPrice;
    |    
    |    mapping (uint256 => uint256) public processingQuality;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(286)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    mapping (uint256 => uint256) public horseShoeIndexPrice;
    |    
  > |    mapping (uint256 => uint256) public processingQuality;
    |    
    |    mapping (uint256 => uint256) public WearOut;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(288)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    mapping (uint256 => uint256) public processingQuality;
    |    
  > |    mapping (uint256 => uint256) public WearOut;
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(290)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    
    | 
  > |    function transfer10( address _to, uint256 _tokenId1, uint256 _tokenId2, uint256 _tokenId3, uint256 _tokenId4, uint256 _tokenId5, uint256 _tokenId6, uint256 _tokenId7, uint256 _tokenId8, uint256 _tokenId9, uint256 _tokenId10  ) external onlyC {
    |     
    |       require(_to != address(0));
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(319)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |     uint8 public constant decimals = 0; 
    |
  > |    function horseShoeForSale(uint256 _tokenId, uint256 price) external {
    |  
    |     address  ownerof =  horseShoeOwnerIndex[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(527)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |		}
    |		
  > | function changePrice(uint256 _tokenId, uint256 price) external {
    |  
    |     address  ownerof =  horseShoeOwnerIndex[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(535)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |		}
    |
  > | function horseShoeNotForSale(uint256 _tokenId) external {
    |         address  ownerof =  horseShoeOwnerIndex[_tokenId];
    |            require(ownerof == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(546)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    |
  > |    function balanceOf(address _owner) public view returns (uint256 count) {
    |        return tokenOwnershipCount[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(559)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |
  > |    function transfer(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(563)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |
  > |    function approve(
    |        address _to,
    |        uint256 _tokenId
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(578)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _tokenId ) external payable {
    |        
    |        if(_from != msg.sender){
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(589)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |
  > |    function ownerOf(uint256 _tokenId)  external view returns (address owner)  {
    |        owner = horseShoeOwnerIndex[_tokenId];
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(611)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |    
  > |    function ownerOfID(uint256 _tokenId)  external view returns (address owner, uint256 tokenId)  {
    |        owner = horseShoeOwnerIndex[_tokenId];
    |tokenId=_tokenId;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(618)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |
  > |       function horseShoeFS(uint256 _tokenId) external view  returns (bool buyable, uint256 tokenId) {
    |        buyable = horseShoeIndexForSale[_tokenId];
    |        tokenId=_tokenId;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(625)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |	
  > |	function horseShoePr(uint256 _tokenId) external view  returns (uint256 price, uint256 tokenId) {
    |        price = horseShoeIndexPrice[_tokenId];
    |        tokenId=_tokenId;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(632)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |
  > | function setSaleFee(uint256 val) external onCTO {
    |        saleFee = val;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(639)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    |
  > |function raceOut(uint256 _tokenIdA) external {
    |    
    |    require(msg.sender==raceDistCon);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(644)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |}
    |
  > |function meltHorseShoe(uint256 _tokenId, address owner) external{
    |  
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(663)

[31mViolation[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |}
    |
  > |function raceRegistration(uint256 _tokenIdA, address owner) external {
    |    
    |  //  require(msg.sender==raceDistCon);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(687)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |contract HorseShoeControl  {
    |
  > |    address public ceoAddress=0xC6F3Fb72db068C96A1D50Bbc3D370cC8e4af0bFc;
    |    address public ctoAddress=0x73A895C06D6E3DcCA3acE48FC8801E17eD247f85;
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    |    address public ceoAddress=0xC6F3Fb72db068C96A1D50Bbc3D370cC8e4af0bFc;
  > |    address public ctoAddress=0x73A895C06D6E3DcCA3acE48FC8801E17eD247f85;
    | 
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    
    |    
  > |    address public raceDistCon;
    |        
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |        
    |
  > |    address public addr_forge;
    |   
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    mapping (address => uint256) HSShopOwnCount;
    |    
  > |     uint256 public HSShopSaleFee = 20;
    |   
    |  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    |
  > |  uint256 public saleFee = 20;
    |   
    |   
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(300)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    | 
  > |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |    
  > |    function _sell(address _from,  uint256 _tokenId, uint256 value) internal {
    |     
    |     if(horseShoeIndexForSale[_tokenId]==true){
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(361)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |contract HorseShoeOwnership is HorseShoeBasis{
    |
  > |  string public constant  name = "CryptoHorseShoe";
    |    string public constant symbol = "CHS";
    |     uint8 public constant decimals = 0; 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(523)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    |  string public constant  name = "CryptoHorseShoe";
  > |    string public constant symbol = "CHS";
    |     uint8 public constant decimals = 0; 
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(524)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |  string public constant  name = "CryptoHorseShoe";
    |    string public constant symbol = "CHS";
  > |     uint8 public constant decimals = 0; 
    |
    |    function horseShoeForSale(uint256 _tokenId, uint256 price) external {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(525)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |
    |
  > |    function _owns(address _applicant, uint256 _tokenId) internal view returns (bool) {
    |        return horseShoeOwnerIndex[_tokenId] == _applicant;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(554)

[33mWarning[0m for MissingInputValidation in contract 'HorseShoeOwnership':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return horseShoes.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(607)

[31mViolation[0m for TODAmount in contract 'HorseShoeOwnership':
    |            if(_from!=0){
    |                
  > |             _from.transfer(oPrice);
    |            }else{
    |                
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(178)

[31mViolation[0m for TODAmount in contract 'HorseShoeOwnership':
    |            }else{
    |                
  > |             ceoAddress.transfer(oPrice);
    |            }
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(181)

[31mViolation[0m for TODAmount in contract 'HorseShoeOwnership':
    |            }
    |             
  > |             ceoAddress.transfer(Fee);
    |             
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(184)

[31mViolation[0m for TODAmount in contract 'HorseShoeOwnership':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[31mViolation[0m for TODAmount in contract 'HorseShoeOwnership':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[31mViolation[0m for TODAmount in contract 'HorseShoeOwnership':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[31mViolation[0m for TODAmount in contract 'HorseShoeOwnership':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[31mViolation[0m for TODAmount in contract 'HorseShoeOwnership':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[31mViolation[0m for TODAmount in contract 'HorseShoeOwnership':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for TODReceiver in contract 'HorseShoeOwnership':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[33mWarning[0m for TODReceiver in contract 'HorseShoeOwnership':
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
    |        HSShopForBiding[_id]=false;
  > |              _to.transfer( msg.value);
    |        }else{
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(223)

[33mWarning[0m for TODReceiver in contract 'HorseShoeOwnership':
    |             
    |            uint256 buyExcess = msg.value - priceNow;
  > |            _to.transfer(buyExcess);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(250)

[33mWarning[0m for TODReceiver in contract 'HorseShoeOwnership':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for TODReceiver in contract 'HorseShoeOwnership':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for TODReceiver in contract 'HorseShoeOwnership':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for TODReceiver in contract 'HorseShoeOwnership':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |            if(_from!=0){
    |                
  > |             _from.transfer(oPrice);
    |            }else{
    |                
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(178)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |            }else{
    |                
  > |             ceoAddress.transfer(oPrice);
    |            }
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(181)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |            }
    |             
  > |             ceoAddress.transfer(Fee);
    |             
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(184)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |             
    |            uint256 buyExcess = msg.value - oPrice - Fee;
  > |            _to.transfer(buyExcess);
    |      
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(188)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
    |        HSShopForBiding[_id]=false;
  > |              _to.transfer( msg.value);
    |        }else{
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(223)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |           emit Transfer(_from, _to, _id);
    |            
  > |             ceoAddress.transfer(priceNow);
    |         
    |             
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(246)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |             
    |            uint256 buyExcess = msg.value - priceNow;
  > |            _to.transfer(buyExcess);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(250)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for UnhandledException in contract 'HorseShoeOwnership':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeOwnership':
    |            
    |             
  > |             _from.transfer(oPrice);
    |             
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeOwnership':
    |             _from.transfer(oPrice);
    |             
  > |             ceoAddress.transfer(Fee);
    |             if(HSSOwner!=0){
    |                 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(419)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeOwnership':
    |             if(HSSOwner!=0){
    |                 
  > |             HSSOwner.transfer(Fee);
    |             }else {
    |             ceoAddress.transfer(Fee);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(422)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeOwnership':
    |             HSSOwner.transfer(Fee);
    |             }else {
  > |             ceoAddress.transfer(Fee);
    |                 
    |             }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(424)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeOwnership':
    |             
    |            uint256 bidExcess = value - oPrice - Fee - Fee;
  > |            _to.transfer(bidExcess);
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(429)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeOwnership':
    |            
    |     }else{
  > |          _to.transfer(value);
    |     }
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HorseShoeOwnership':
    |        }else{
    |            
  > |          _to.transfer(msg.value);
    |        }
    | 
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(602)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            HSShopOwnCount[_to]++;
    |            
  > |            HShoeShopO[id] = _to;
    |            
    |            HSShopForSale[id]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            HShoeShopO[id] = _to;
    |            
  > |            HSShopForSale[id]=false;
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            
    |            
  > |                HSShopOwnCount[_from]--;
    |               
    |           emit Transfer(_from, _to, id);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        
    |          if(priceNow<=0||priceNow>=startPrice[_id]){
  > |        HSShopForBiding[_id]=false;
    |              _to.transfer( msg.value);
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            
    |        
  > |        HSShopForBiding[_id]=false;
    |        
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            HSShopOwnCount[_to]++;
    |            
  > |            HShoeShopO[_id] = _to;
    |            
    |            HSShopForSale[_id]=true;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            HShoeShopO[_id] = _to;
    |            
  > |            HSShopForSale[_id]=true;
    |            
    |            uint256 priceAufschlag=msg.value/3;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            
    |            
  > |   HSShopPrice[_id]=msg.value+ priceAufschlag;
    |               
    |           emit Transfer(_from, _to, _id);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(242)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    | 
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
  > |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(307)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        
    |        if (_from != address(0)) {
  > |            tokenOwnershipCount[_from]--;
    |         
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(310)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            address _to = msg.sender;
    |            
  > |            tokenOwnershipCount[_to]++;
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(375)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            
    |            tokenOwnershipCount[_to]++;
  > |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
    |            horseShoeIndexForSale[_tokenId]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(376)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  > |            horseShoeIndexForSale[_tokenId]=false;
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(378)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            
    |            if (_from != address(0)) {
  > |                tokenOwnershipCount[_from]--;
    |               
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(382)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |		
    |    
  > |    horseshoeA.dna4=false;
    |    
    |    raceListed[_tokenIdA]=true;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(704)

[31mViolation[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |    horseshoeA.dna4=false;
    |    
  > |    raceListed[_tokenIdA]=true;
    |	
    |	
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(706)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            address _from = HShoeShopO[id];
    |            
  > |            HSShopOwnCount[_to]++;
    |            
    |            HShoeShopO[id] = _to;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            address _from = HShoeShopO[_id];
    |            
  > |            HSShopOwnCount[_to]++;
    |            
    |            HShoeShopO[_id] = _to;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    | 
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
  > |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        
    |        if (_from != address(0)) {
  > |            tokenOwnershipCount[_from]--;
    |         
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            address _to = msg.sender;
    |            
  > |            tokenOwnershipCount[_to]++;
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            
    |            tokenOwnershipCount[_to]++;
  > |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
    |            horseShoeIndexForSale[_tokenId]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            horseShoeOwnerIndex[_tokenId] = _to;
    |            
  > |            horseShoeIndexForSale[_tokenId]=false;
    |            
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            
    |            if (_from != address(0)) {
  > |                tokenOwnershipCount[_from]--;
    |               
    |            }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            
    |        function newForgeCon (address newConAddr) external onCTO {
  > |            addr_forge = newConAddr;
    |            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |            
    |        function newRaceDistCon (address newConAddr) external onCTO {
  > |            raceDistCon = newConAddr;
    |            
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |    
    |      function newPriceDecreaseRate(uint DecreRate,uint256 _id) external onlyC   {
  > |                priceDecreaseRate[_id]=DecreRate;
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        require(price!=0);
    |        
  > |        HSShopPrice[HSShopId]=price;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        require(HShoeShopO[_id]==0);
    |        
  > |        HSShopPrice[_id]=price;
    |        
    |            
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        
    |            
  > |                HSShopForBiding[_id]=true;
    |                
    |                  startBlock[_id] = block.number;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |                HSShopForBiding[_id]=true;
    |                
  > |                  startBlock[_id] = block.number;
    |                  
    |                  startPrice[_id] = price;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |                  startBlock[_id] = block.number;
    |                  
  > |                  startPrice[_id] = price;
    |                  
    |                 priceDecreaseRate[_id]= _decreRate;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |                  startPrice[_id] = price;
    |                  
  > |                 priceDecreaseRate[_id]= _decreRate;
    |                
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |    
    |     function setHSShopSaleFee(uint256 val) external onCTO {
  > |        HSShopSaleFee = val;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    | 
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
  > |        tokenOwnershipCount[_to]++;
    |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |    function _transfer(address _from, address _to, uint256 _tokenId) internal {
    |        tokenOwnershipCount[_to]++;
  > |        horseShoeOwnerIndex[_tokenId] = _to;
    |        
    |        if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |     address  ownerof =  horseShoeOwnerIndex[_tokenId];
    |        require(ownerof == msg.sender);
  > |        horseShoeIndexPrice[_tokenId] = price;
    |        horseShoeIndexForSale[_tokenId]= true;
    |		}
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(531)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        require(ownerof == msg.sender);
    |        horseShoeIndexPrice[_tokenId] = price;
  > |        horseShoeIndexForSale[_tokenId]= true;
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(532)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |       
    |             
  > |              horseShoeIndexPrice[_tokenId] = price;
    |         
    |		}
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(542)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |         address  ownerof =  horseShoeOwnerIndex[_tokenId];
    |            require(ownerof == msg.sender);
  > |        horseShoeIndexForSale[_tokenId]= false;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |
    | function setSaleFee(uint256 val) external onCTO {
  > |        saleFee = val;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(640)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |      HorseShoe storage horseshoeA = horseShoes[_tokenIdA];
    |    
  > |    horseshoeA.dna4=true;
    |    
    |	  
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(653)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |    
    |	  
  > |       WearOut[_tokenIdA] = WearOut[_tokenIdA]+1;
    |	  
    |	  raceListed[_tokenIdA]=false;
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |       WearOut[_tokenIdA] = WearOut[_tokenIdA]+1;
    |	  
  > |	  raceListed[_tokenIdA]=false;
    |    
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |   
    |        
  > |            horseShoeIndexForSale[_tokenId]=false;
    |        horseShoeOwnerIndex[_tokenId]=0x00;
    |        
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        
    |            horseShoeIndexForSale[_tokenId]=false;
  > |        horseShoeOwnerIndex[_tokenId]=0x00;
    |        
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(671)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        
    |      
  > |       tokenOwnershipCount[owner]--;
    |        
    |        //iron totalsupply less?
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(674)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |        
    |         HorseShoe storage horseshoe = horseShoes[_tokenId];
  > |        horseshoe.dna5 = true;
    |      horseshoe.dna4 = false;
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(681)

[33mWarning[0m for UnrestrictedWrite in contract 'HorseShoeOwnership':
    |         HorseShoe storage horseshoe = horseShoes[_tokenId];
    |        horseshoe.dna5 = true;
  > |      horseshoe.dna4 = false;
    |      
    |      
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(682)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  > |  function ownable() public {
    |    owner = msg.sender;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |  emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(20)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |  function ownable() public {
  > |    owner = msg.sender;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(12)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |  emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8e43d7a5c4b2de24b728deff0e666fe674b3ca91.sol(23)


