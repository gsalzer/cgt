Processing contract: /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol:CryptoSurprise
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol:SetLibrary
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CryptoSurprise':
    |        if (previousOwner != address(this))
    |        {
  > |            previousOwner.transfer(previousOwnerReward);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(148)

[33mWarning[0m for DAOConstantGas in contract 'CryptoSurprise':
    |        if (refund > 0)
    |        {
  > |            msg.sender.transfer(refund);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(153)

[33mWarning[0m for DAOConstantGas in contract 'CryptoSurprise':
    |    {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(279)

[33mWarning[0m for LockedEther in contract 'CryptoSurprise':
    |	////////////////////////////////////
    |	
  > |contract CryptoSurprise
    |{
    |    using SetLibrary for SetLibrary.Set;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    Bag[] public bags;
    |    
  > |    mapping(address => uint256) public addressToTotalEtherSpent;
    |    mapping(address => uint256) public addressToTotalPurchasesMade;
    |    mapping(address => SetLibrary.Set) private ownerToBagIndices;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    
    |    mapping(address => uint256) public addressToTotalEtherSpent;
  > |    mapping(address => uint256) public addressToTotalPurchasesMade;
    |    mapping(address => SetLibrary.Set) private ownerToBagIndices;
    |    address[] public allParticipants;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    
    |    // Function that allows the current owner to transfer ownership
  > |    function transferOwnership(address _newOwner) external
    |    {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(262)

[31mViolation[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    // Function that allows the current owner to withdraw any amount
    |    // of ETH from the contract
  > |    function withdrawEther(uint256 amount) external
    |    {
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(276)

[31mViolation[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    }
    |    
  > |    function balanceOf(address _owner) external view returns (uint256)
    |    {
    |        return ownerToBagIndices[_owner].size();
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(383)

[31mViolation[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    }
    |    mapping(address => mapping(address => mapping(uint256 => bool))) private ownerToAddressToBagIndexAllowed;
  > |    function approve(address _to, uint256 _bagIndex) external
    |    {
    |        require(_bagIndex < bags.length);
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(395)

[31mViolation[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    }
    |    
  > |    function tokenOfOwnerByIndex(address _owner, uint256 _index) external view returns (uint256)
    |    {
    |        require(_index < ownerToBagIndices[_owner].size());
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(422)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    ////// CONSTANTS
    |    
  > |    uint256 constant public BAG_TRANSFER_FEE = 0.05 ether;
    |    uint256 constant public BAG_TRANSFER_MINIMUM_AMOUNT_OF_BUYS = 4;
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    
    |    uint256 constant public BAG_TRANSFER_FEE = 0.05 ether;
  > |    uint256 constant public BAG_TRANSFER_MINIMUM_AMOUNT_OF_BUYS = 4;
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    
    |    // Variable that remembers the current owner
  > |    address public owner;
    |    BagType[] public bagTypes;
    |    Bag[] public bags;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    address public owner;
    |    BagType[] public bagTypes;
  > |    Bag[] public bags;
    |    
    |    mapping(address => uint256) public addressToTotalEtherSpent;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    mapping(address => uint256) public addressToTotalPurchasesMade;
    |    mapping(address => SetLibrary.Set) private ownerToBagIndices;
  > |    address[] public allParticipants;
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    ////// PLAYER FUNCTIONS
    |    
  > |    function buyBag(uint256 _bagIndex) external payable
    |    {
    |        // Make sure that the bag exists
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    ////// INTERNAL FUNCTIONS
    |    
  > |    function _transferBag(address _from, address _to, uint256 _bagIndex) internal
    |    {
    |        // Make sure that the bag exists
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(324)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    ////// VIEW FUNCTIONS FOR USER INTERFACE
    |    
  > |    function amountOfBags() external view returns (uint256)
    |    {
    |        return bags.length;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(348)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |        return bags.length;
    |    }
  > |    function amountOfBagTypes() external view returns (uint256)
    |    {
    |        return bagTypes.length;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(352)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |        return bagTypes.length;
    |    }
  > |    function amountOfParticipants() external view returns (uint256)
    |    {
    |        return allParticipants.length;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(356)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    event Approval(address indexed _owner, address indexed _approved, uint256 _tokenId);
    |    
  > |    function name() external pure returns (string)
    |    {
    |        return "Bags";
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(368)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    }
    |    
  > |    function symbol() external pure returns (string)
    |    {
    |        return "BAG";
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(373)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    }
    |    
  > |    function totalSupply() external view returns (uint256)
    |    {
    |        return bags.length;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(378)

[33mWarning[0m for MissingInputValidation in contract 'CryptoSurprise':
    |    }
    |    
  > |    function ownerOf(uint256 _bagIndex) external view returns (address)
    |    {
    |        require(_bagIndex < bags.length);
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(388)

[33mWarning[0m for TODAmount in contract 'CryptoSurprise':
    |    {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(279)

[31mViolation[0m for TODReceiver in contract 'CryptoSurprise':
    |    {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(279)

[33mWarning[0m for TODReceiver in contract 'CryptoSurprise':
    |        if (refund > 0)
    |        {
  > |            msg.sender.transfer(refund);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(153)

[33mWarning[0m for UnhandledException in contract 'CryptoSurprise':
    |        if (previousOwner != address(this))
    |        {
  > |            previousOwner.transfer(previousOwnerReward);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(148)

[33mWarning[0m for UnhandledException in contract 'CryptoSurprise':
    |        if (refund > 0)
    |        {
  > |            msg.sender.transfer(refund);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(153)

[33mWarning[0m for UnhandledException in contract 'CryptoSurprise':
    |    {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(279)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoSurprise':
    |    {
    |        require(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(279)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |pragma solidity ^0.4.19;
    |
  > |	////////////////////////////////////
    |	////// CRYPTO SURPRISE
    |	////// https://cryptosurprise.me
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |        
    |        // Set the buyer as the new owner
  > |        bag.owner = msg.sender;
    |        
    |        // Calculate the previous and next price
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |        require(bagType.currentSupply < bagType.supplyHardCap);
    |        
  > |        bags.push(Bag({
    |            bagTypeIndex: _bagTypeIndex,
    |            
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |        }));
    |        
  > |        bagType.currentSupply++;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |        
    |        // Set the new owner
  > |        bags[_bagIndex].owner = _to;
    |        ownerToBagIndices[_from].remove(_bagIndex);
    |        ownerToBagIndices[_to].add(_bagIndex);
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |            allParticipants.push(msg.sender);
    |        }
  > |        addressToTotalEtherSpent[msg.sender] += msg.value;
    |        addressToTotalPurchasesMade[msg.sender]++;
    |        
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |        }
    |        addressToTotalEtherSpent[msg.sender] += msg.value;
  > |        addressToTotalPurchasesMade[msg.sender]++;
    |        
    |        // Transfer the reward to the previous owner. If the previous owner is
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |        require(msg.sender == bags[_bagIndex].owner);
    |        
  > |        ownerToAddressToBagIndexAllowed[msg.sender][_to][_bagIndex] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |        require(ownerToAddressToBagIndexAllowed[previousOwner][msg.sender][_bagIndex] == true);
    |        
  > |        ownerToAddressToBagIndexAllowed[previousOwner][msg.sender][_bagIndex] = false;
    |        
    |        _transferBag(previousOwner, msg.sender, _bagIndex);
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoSurprise':
    |    {
    |        require(msg.sender == owner);
  > |        owner = _newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(265)

[33mWarning[0m for LockedEther in contract 'SetLibrary':
    |}
    | 
  > |library SetLibrary
    |{
    |    struct ArrayIndexAndExistsFlag
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(430)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |pragma solidity ^0.4.19;
    |
  > |	////////////////////////////////////
    |	////// CRYPTO SURPRISE
    |	////// https://cryptosurprise.me
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |}
    | 
  > |library SetLibrary
    |{
    |    struct ArrayIndexAndExistsFlag
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(430)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |        
    |        // Remember that the value is in the set, and remember the value's array index
  > |        self.valuesMapping[value] = ArrayIndexAndExistsFlag({index: self.values.length, exists: true});
    |        
    |        // Add the value to the array of unique values
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(448)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |        
    |        // Add the value to the array of unique values
  > |        self.values.push(value);
    |        
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(451)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |        
    |        // Remember that the value is not in the set
  > |        self.valuesMapping[value].exists = false;
    |        
    |        // Now we need to remove the value from the array. To prevent leaking
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(465)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |            uint256 valueToMove = self.values[self.values.length-1];
    |            uint256 indexToMoveItTo = self.valuesMapping[value].index;
  > |            self.values[indexToMoveItTo] = valueToMove;
    |            self.valuesMapping[valueToMove].index = indexToMoveItTo;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(474)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |            uint256 indexToMoveItTo = self.valuesMapping[value].index;
    |            self.values[indexToMoveItTo] = valueToMove;
  > |            self.valuesMapping[valueToMove].index = indexToMoveItTo;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(475)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |        // We do free the storage allocation in the mapping, because it is
    |        // less likely that the exact same value will added again.
  > |        delete self.valuesMapping[value];
    |        
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfc88a9f06f5fe0de2dac95c5fada7a8b3b3d610d.sol(490)


