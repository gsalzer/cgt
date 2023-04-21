Processing contract: /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol:PXLProperty
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol:VirtualRealEstate
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'PXLProperty':
    |    Moderation is handled inside PXLProperty, not by external DApps. It's up to other apps to respect the flags, however
    |*/
  > |contract PXLProperty is StandardToken {
    |    /* Access Level Constants */
    |    uint8 constant LEVEL_1_MODERATOR = 1;    // 1: Level 1 Moderator - nsfw-flagging power
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    Moderation is handled inside PXLProperty, not by external DApps. It's up to other apps to respect the flags, however
    |*/
  > |contract PXLProperty is StandardToken {
    |    /* Access Level Constants */
    |    uint8 constant LEVEL_1_MODERATOR = 1;    // 1: Level 1 Moderator - nsfw-flagging power
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    // Moderator Flags
    |    function setPropertyFlag(uint16 propertyID, uint8 flag) public regulatorAccess(flag == FLAG_NSFW ? LEVEL_1_MODERATOR : LEVEL_2_MODERATOR) {
  > |        properties[propertyID].flag = flag;
    |        if (flag == FLAG_BAN) {
    |            require(properties[propertyID].isInPrivateMode); //Can't ban an owner's property if a public user caused the NSFW content
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(newPixelPropertyContract != 0);
    |        if (pixelPropertyContract != 0) {
  > |            regulators[pixelPropertyContract] = 0; //If we already have a pixelPropertyContract, revoke its ownership
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        
  > |        pixelPropertyContract = newPixelPropertyContract;
    |        regulators[newPixelPropertyContract] = LEVEL_PIXEL_PROPERTY;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        
    |        pixelPropertyContract = newPixelPropertyContract;
  > |        regulators[newPixelPropertyContract] = LEVEL_PIXEL_PROPERTY;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyDAppContract(address propertyDAppContract, bool giveAccess) public regulatorAccess(LEVEL_1_ROOT) {
    |        require(propertyDAppContract != 0);
  > |        regulators[propertyDAppContract] = giveAccess ? LEVEL_PROPERTY_DAPPS : 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyRowColor(uint16 propertyID, uint8 row, uint256 rowColor) public propertyDAppAccess() {
    |        if (properties[propertyID].colors[row] != rowColor) {
  > |            properties[propertyID].colors[row] = rowColor;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(179)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyPrivateMode(uint16 propertyID, bool isInPrivateMode) public pixelPropertyAccess() {
    |        if (properties[propertyID].isInPrivateMode != isInPrivateMode) {
  > |            properties[propertyID].isInPrivateMode = isInPrivateMode;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyOwner(uint16 propertyID, address propertyOwner) public pixelPropertyAccess() {
    |        if (properties[propertyID].owner != propertyOwner) {
  > |            properties[propertyID].owner = propertyOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(202)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyLastUpdater(uint16 propertyID, address lastUpdater) public pixelPropertyAccess() {
    |        if (properties[propertyID].lastUpdater != lastUpdater) {
  > |            properties[propertyID].lastUpdater = lastUpdater;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertySalePrice(uint16 propertyID, uint256 salePrice) public pixelPropertyAccess() {
    |        if (properties[propertyID].salePrice != salePrice) {
  > |            properties[propertyID].salePrice = salePrice;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    
    |    function setPropertyLastUpdate(uint16 propertyID, uint256 lastUpdate) public pixelPropertyAccess() {
  > |        properties[propertyID].lastUpdate = lastUpdate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    
    |    function setPropertyBecomePublic(uint16 propertyID, uint256 becomePublic) public pixelPropertyAccess() {
  > |        properties[propertyID].becomePublic = becomePublic;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(223)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    
    |    function setPropertyEarnUntil(uint16 propertyID, uint256 earnUntil) public pixelPropertyAccess() {
  > |        properties[propertyID].earnUntil = earnUntil;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyPrivateModeEarnUntilLastUpdateBecomePublic(uint16 propertyID, bool privateMode, uint256 earnUntil, uint256 lastUpdate, uint256 becomePublic) public pixelPropertyAccess() {
    |        if (properties[propertyID].isInPrivateMode != privateMode) {
  > |            properties[propertyID].isInPrivateMode = privateMode;
    |        }
    |        properties[propertyID].earnUntil = earnUntil;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(232)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |            properties[propertyID].isInPrivateMode = privateMode;
    |        }
  > |        properties[propertyID].earnUntil = earnUntil;
    |        properties[propertyID].lastUpdate = lastUpdate;
    |        properties[propertyID].becomePublic = becomePublic;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        properties[propertyID].earnUntil = earnUntil;
  > |        properties[propertyID].lastUpdate = lastUpdate;
    |        properties[propertyID].becomePublic = becomePublic;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        properties[propertyID].earnUntil = earnUntil;
    |        properties[propertyID].lastUpdate = lastUpdate;
  > |        properties[propertyID].becomePublic = becomePublic;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyLastUpdaterLastUpdate(uint16 propertyID, address lastUpdater, uint256 lastUpdate) public pixelPropertyAccess() {
    |        if (properties[propertyID].lastUpdater != lastUpdater) {
  > |            properties[propertyID].lastUpdater = lastUpdater;
    |        }
    |        properties[propertyID].lastUpdate = lastUpdate;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(241)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |            properties[propertyID].lastUpdater = lastUpdater;
    |        }
  > |        properties[propertyID].lastUpdate = lastUpdate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(243)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    
    |    function setPropertyBecomePublicEarnUntil(uint16 propertyID, uint256 becomePublic, uint256 earnUntil) public pixelPropertyAccess() {
  > |        properties[propertyID].becomePublic = becomePublic;
    |        properties[propertyID].earnUntil = earnUntil;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyBecomePublicEarnUntil(uint16 propertyID, uint256 becomePublic, uint256 earnUntil) public pixelPropertyAccess() {
    |        properties[propertyID].becomePublic = becomePublic;
  > |        properties[propertyID].earnUntil = earnUntil;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(248)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyOwnerSalePricePrivateModeFlag(uint16 propertyID, address owner, uint256 salePrice, bool privateMode, uint8 flag) public pixelPropertyAccess() {
    |        if (properties[propertyID].owner != owner) {
  > |            properties[propertyID].owner = owner;
    |        }
    |        if (properties[propertyID].salePrice != salePrice) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (properties[propertyID].salePrice != salePrice) {
  > |            properties[propertyID].salePrice = salePrice;
    |        }
    |        if (properties[propertyID].isInPrivateMode != privateMode) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (properties[propertyID].isInPrivateMode != privateMode) {
  > |            properties[propertyID].isInPrivateMode = privateMode;
    |        }
    |        if (properties[propertyID].flag != flag) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (properties[propertyID].flag != flag) {
  > |            properties[propertyID].flag = flag;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(262)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyOwnerSalePrice(uint16 propertyID, address owner, uint256 salePrice) public pixelPropertyAccess() {
    |        if (properties[propertyID].owner != owner) {
  > |            properties[propertyID].owner = owner;
    |        }
    |        if (properties[propertyID].salePrice != salePrice) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (properties[propertyID].salePrice != salePrice) {
  > |            properties[propertyID].salePrice = salePrice;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(271)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function rewardPXL(address rewardedUser, uint256 amount) public pixelPropertyAccess() {
    |        require(rewardedUser != 0);
  > |        balances[rewardedUser] += amount;
    |        totalSupply += amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(278)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(rewardedUser != 0);
    |        balances[rewardedUser] += amount;
  > |        totalSupply += amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(279)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(burningUser != 0);
    |        require(balances[burningUser] >= amount);
  > |        balances[burningUser] -= amount;
    |        totalSupply -= amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(balances[burningUser] >= amount);
    |        balances[burningUser] -= amount;
  > |        totalSupply -= amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(286)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(balances[burner] >= toBurn);
    |        if (toBurn > 0) {
  > |            balances[burner] -= toBurn;
    |            totalSupply -= toBurn;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(292)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (toBurn > 0) {
    |            balances[burner] -= toBurn;
  > |            totalSupply -= toBurn;
    |        }
    |        if (rewarder != 0) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(293)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (rewarder != 0) {
  > |            balances[rewarder] += toReward;
    |            totalSupply += toReward;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(296)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (rewarder != 0) {
    |            balances[rewarder] += toReward;
  > |            totalSupply += toReward;
    |        }
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(297)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(balances[burner] >= toBurn);
    |        if (toBurn > 0) {
  > |            balances[burner] -= toBurn;
    |            totalSupply -= toBurn;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(304)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (toBurn > 0) {
    |            balances[burner] -= toBurn;
  > |            totalSupply -= toBurn;
    |        }
    |        if (rewarder1 != 0) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (rewarder1 != 0) {
  > |            balances[rewarder1] += toReward1;
    |            totalSupply += toReward1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (rewarder1 != 0) {
    |            balances[rewarder1] += toReward1;
  > |            totalSupply += toReward1;
    |        }
    |        if (rewarder2 != 0) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(309)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (rewarder2 != 0) {
  > |            balances[rewarder2] += toReward2;
    |            totalSupply += toReward2;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (rewarder2 != 0) {
    |            balances[rewarder2] += toReward2;
  > |            totalSupply += toReward2;
    |        }
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(313)

[33mWarning[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'PXLProperty':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        require(regulators[msg.sender] > accessLevel); // You have to be a higher rank than the role you are setting
  > |        regulators[user] = accessLevel;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(150)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |// ERC20 Token Implementation
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |// ERC20 Token Implementation
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |// ERC20 Token Interface
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(47)

[31mViolation[0m for DAOConstantGas in contract 'VirtualRealEstate':
    |    function withdraw(uint256 amount) public ownerOnly() {
    |        if (amount <= ownerEth) {
  > |            owner.transfer(amount);
    |            ownerEth -= amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(718)

[31mViolation[0m for DAOConstantGas in contract 'VirtualRealEstate':
    |    // Contract owner can withdraw ownerEth amount
    |    function withdrawAll() public ownerOnly() {
  > |        owner.transfer(ownerEth);
    |        ownerEth = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(725)

[33mWarning[0m for LockedEther in contract 'VirtualRealEstate':
    |
    |// PixelProperty
  > |contract VirtualRealEstate {
    |    /* ### Variables ### */
    |    // Contract owner
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(404)

[31mViolation[0m for TODAmount in contract 'VirtualRealEstate':
    |    // Contract owner can withdraw ownerEth amount
    |    function withdrawAll() public ownerOnly() {
  > |        owner.transfer(ownerEth);
    |        ownerEth = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(725)

[33mWarning[0m for TODAmount in contract 'VirtualRealEstate':
    |    function withdraw(uint256 amount) public ownerOnly() {
    |        if (amount <= ownerEth) {
  > |            owner.transfer(amount);
    |            ownerEth -= amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(718)

[31mViolation[0m for TODReceiver in contract 'VirtualRealEstate':
    |    function withdraw(uint256 amount) public ownerOnly() {
    |        if (amount <= ownerEth) {
  > |            owner.transfer(amount);
    |            ownerEth -= amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(718)

[31mViolation[0m for TODReceiver in contract 'VirtualRealEstate':
    |    // Contract owner can withdraw ownerEth amount
    |    function withdrawAll() public ownerOnly() {
  > |        owner.transfer(ownerEth);
    |        ownerEth = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(725)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Property owners can change their hoverText for when a user mouses over their Properties
    |    function setHoverText(uint256[2] text) public {
  > |        pxlProperty.setOwnerHoverText(msg.sender, text);
    |        SetUserHoverText(msg.sender, text);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(499)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Property owners can change the clickable link for when a user clicks on their Properties
    |    function setLink(uint256[2] website) public {
  > |        pxlProperty.setOwnerLink(msg.sender, website);
    |        SetUserSetLink(msg.sender, website);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(505)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // If a Property is private which has expired, make it public
    |    function tryForcePublic(uint16 propertyID) public validPropertyID(propertyID) { 
  > |        var (isInPrivateMode, becomePublic) = pxlProperty.getPropertyPrivateModeBecomePublic(propertyID);
    |        if (isInPrivateMode && becomePublic < now) {
    |            pxlProperty.setPropertyPrivateMode(propertyID, false);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(511)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        var (isInPrivateMode, becomePublic) = pxlProperty.getPropertyPrivateModeBecomePublic(propertyID);
    |        if (isInPrivateMode && becomePublic < now) {
  > |            pxlProperty.setPropertyPrivateMode(propertyID, false);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(513)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        uint256 projectedPayout = getProjectedPayout(propertyID);
    |        if (_tryTriggerPayout(propertyID, PXLToSpend)) {
  > |            pxlProperty.setPropertyRowColor(propertyID, row, newColorData);
    |            var (lastUpdater, becomePublic) = pxlProperty.getPropertyLastUpdaterBecomePublic(propertyID);
    |            PropertyColorUpdate(propertyID, pxlProperty.getPropertyColors(propertyID), now, lastUpdater, becomePublic, projectedPayout);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(559)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        if (_tryTriggerPayout(propertyID, PXLToSpend)) {
    |            pxlProperty.setPropertyRowColor(propertyID, row, newColorData);
  > |            var (lastUpdater, becomePublic) = pxlProperty.getPropertyLastUpdaterBecomePublic(propertyID);
    |            PropertyColorUpdate(propertyID, pxlProperty.getPropertyColors(propertyID), now, lastUpdater, becomePublic, projectedPayout);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(560)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |            pxlProperty.setPropertyRowColor(propertyID, row, newColorData);
    |            var (lastUpdater, becomePublic) = pxlProperty.getPropertyLastUpdaterBecomePublic(propertyID);
  > |            PropertyColorUpdate(propertyID, pxlProperty.getPropertyColors(propertyID), now, lastUpdater, becomePublic, projectedPayout);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(561)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Property owners can toggle their Properties between private mode and free-use mode
    |    function setPropertyMode(uint16 propertyID, bool setPrivateMode, uint32 numMinutesPrivate) public validPropertyID(propertyID) {
  > |        var (propertyFlag, propertyIsInPrivateMode, propertyOwner, propertyLastUpdater, propertySalePrice, propertyLastUpdate, propertyBecomePublic, propertyEarnUntil) = pxlProperty.properties(propertyID);
    |        
    |        require(msg.sender == propertyOwner);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(568)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |            require(propertyIsInPrivateMode || propertyBecomePublic <= now || propertyLastUpdater == msg.sender ); 
    |            require(numMinutesPrivate > 0);
  > |            require(pxlProperty.balanceOf(msg.sender) >= numMinutesPrivate);
    |            // Determines when the Property becomes public, one payout interval per coin burned
    |            whenToBecomePublic = (now < propertyBecomePublic ? propertyBecomePublic : now) + PROPERTY_GENERATION_PAYOUT_INTERVAL * numMinutesPrivate;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(578)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |            rewardedAmount = getProjectedPayout(propertyIsInPrivateMode, propertyLastUpdate, propertyEarnUntil);
    |            if (rewardedAmount > 0 && propertyLastUpdater != 0) {
  > |                pxlProperty.burnPXLRewardPXLx2(msg.sender, numMinutesPrivate, propertyLastUpdater, rewardedAmount, msg.sender, rewardedAmount);
    |            } else {
    |                pxlProperty.burnPXL(msg.sender, numMinutesPrivate);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(584)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |                pxlProperty.burnPXLRewardPXLx2(msg.sender, numMinutesPrivate, propertyLastUpdater, rewardedAmount, msg.sender, rewardedAmount);
    |            } else {
  > |                pxlProperty.burnPXL(msg.sender, numMinutesPrivate);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(586)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |            // If its in private mode and still has time left, reimburse them for N-1 minutes tokens back
    |            if (propertyIsInPrivateMode && propertyBecomePublic > now) {
  > |                pxlProperty.rewardPXL(msg.sender, ((propertyBecomePublic - now) / PROPERTY_GENERATION_PAYOUT_INTERVAL) - 1);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(592)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        }
    |        
  > |        pxlProperty.setPropertyPrivateModeEarnUntilLastUpdateBecomePublic(propertyID, setPrivateMode, 0, 0, whenToBecomePublic);
    |        
    |        if (setPrivateMode) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(596)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Transfer Property ownership between accounts. This has no cost, no cut and does not change flag status
    |    function transferProperty(uint16 propertyID, address newOwner) public validPropertyID(propertyID) returns(bool) {
  > |        require(pxlProperty.getPropertyOwner(propertyID) == msg.sender);
    |        _transferProperty(propertyID, newOwner, 0, 0, pxlProperty.getPropertyFlag(propertyID), msg.sender);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(606)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    function transferProperty(uint16 propertyID, address newOwner) public validPropertyID(propertyID) returns(bool) {
    |        require(pxlProperty.getPropertyOwner(propertyID) == msg.sender);
  > |        _transferProperty(propertyID, newOwner, 0, 0, pxlProperty.getPropertyFlag(propertyID), msg.sender);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(607)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    function buyProperty(uint16 propertyID, uint256 pxlValue) public validPropertyID(propertyID) payable returns(bool) {
    |        //Must be the first purchase, otherwise do it with PXL from another user
  > |        require(pxlProperty.getPropertyOwner(propertyID) == 0);
    |        // Must be able to afford the given PXL
    |        require(pxlProperty.balanceOf(msg.sender) >= pxlValue);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(613)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        require(pxlProperty.getPropertyOwner(propertyID) == 0);
    |        // Must be able to afford the given PXL
  > |        require(pxlProperty.balanceOf(msg.sender) >= pxlValue);
    |        require(pxlValue != 0);
    |        
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(615)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        require(msg.value >= ethLeft);
    |        
  > |        pxlProperty.burnPXLRewardPXL(msg.sender, pxlValue, owner, pxlValue);
    |        
    |        systemPXLStepTally += uint16(100 * pxlValue / systemSalePricePXL);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(626)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    function buyPropertyInPXL(uint16 propertyID, uint256 PXLValue) public validPropertyID(propertyID) {
    |        // If Property is system-owned
  > |        var (propertyOwner, propertySalePrice) = pxlProperty.getPropertyOwnerSalePrice(propertyID);
    |        address originalOwner = propertyOwner;
    |        if (propertyOwner == 0) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(651)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        if (propertyOwner == 0) {
    |            // Turn it into a user-owned at system price with contract owner as owner
  > |            pxlProperty.setPropertyOwnerSalePrice(propertyID, owner, systemSalePricePXL);
    |            propertyOwner = owner;
    |            propertySalePrice = systemSalePricePXL;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(655)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        require(propertySalePrice <= PXLValue);
    |        uint256 amountTransfered = propertySalePrice * USER_BUY_CUT_PERCENT / 100;
  > |        pxlProperty.burnPXLRewardPXLx2(msg.sender, propertySalePrice, propertyOwner, amountTransfered, owner, (propertySalePrice - amountTransfered));        
    |        _transferProperty(propertyID, msg.sender, 0, propertySalePrice, 0, originalOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(668)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Purchase a system-Property in pure ETH
    |    function buyPropertyInETH(uint16 propertyID) public validPropertyID(propertyID) payable returns(bool) {
  > |        require(pxlProperty.getPropertyOwner(propertyID) == 0);
    |        require(msg.value >= systemSalePriceETH);
    |        
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(674)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    function listForSale(uint16 propertyID, uint256 price) public validPropertyID(propertyID) returns(bool) {
    |        require(price != 0);
  > |        require(msg.sender == pxlProperty.getPropertyOwner(propertyID));
    |        pxlProperty.setPropertySalePrice(propertyID, price);
    |        PropertySetForSale(propertyID, price);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(691)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        require(price != 0);
    |        require(msg.sender == pxlProperty.getPropertyOwner(propertyID));
  > |        pxlProperty.setPropertySalePrice(propertyID, price);
    |        PropertySetForSale(propertyID, price);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(692)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Property owner delists their Property from being for sale
    |    function delist(uint16 propertyID) public validPropertyID(propertyID) returns(bool) {
  > |        require(msg.sender == pxlProperty.getPropertyOwner(propertyID));
    |        pxlProperty.setPropertySalePrice(propertyID, 0);
    |        DelistProperty(propertyID);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(699)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    function delist(uint16 propertyID) public validPropertyID(propertyID) returns(bool) {
    |        require(msg.sender == pxlProperty.getPropertyOwner(propertyID));
  > |        pxlProperty.setPropertySalePrice(propertyID, 0);
    |        DelistProperty(propertyID);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(700)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    function makeBid(uint16 propertyID, uint256 bidAmount) public validPropertyID(propertyID) {
    |        require(bidAmount > 0);
  > |        require(pxlProperty.balanceOf(msg.sender) >= 1 + bidAmount);
    |        Bid(propertyID, bidAmount, now);
    |        pxlProperty.burnPXL(msg.sender, 1);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(708)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        require(pxlProperty.balanceOf(msg.sender) >= 1 + bidAmount);
    |        Bid(propertyID, bidAmount, now);
  > |        pxlProperty.burnPXL(msg.sender, 1);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(710)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    function withdraw(uint256 amount) public ownerOnly() {
    |        if (amount <= ownerEth) {
  > |            owner.transfer(amount);
    |            ownerEth -= amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(718)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Contract owner can withdraw ownerEth amount
    |    function withdrawAll() public ownerOnly() {
  > |        owner.transfer(ownerEth);
    |        ownerEth = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(725)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Function which wraps payouts for setColors
    |    function _tryTriggerPayout(uint16 propertyID, uint256 pxlToSpend) private returns(bool) {
  > |        var (propertyFlag, propertyIsInPrivateMode, propertyOwner, propertyLastUpdater, propertySalePrice, propertyLastUpdate, propertyBecomePublic, propertyEarnUntil) = pxlProperty.properties(propertyID);
    |        //If the Property is in private mode and expired, make it public
    |        if (propertyIsInPrivateMode && propertyBecomePublic <= now) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(738)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |        //If the Property is in private mode and expired, make it public
    |        if (propertyIsInPrivateMode && propertyBecomePublic <= now) {
  > |            pxlProperty.setPropertyPrivateMode(propertyID, false);
    |            propertyIsInPrivateMode = false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(741)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |            
    |            uint256 projectedAmount = getProjectedPayout(propertyIsInPrivateMode, propertyLastUpdate, propertyEarnUntil);
  > |            pxlProperty.burnPXLRewardPXLx2(msg.sender, pxlToSpend, propertyLastUpdater, projectedAmount, propertyOwner, projectedAmount);
    |            
    |            //BecomePublic = (N+1)/2 minutes of user-private mode
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(756)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |            //BecomePublic = (N+1)/2 minutes of user-private mode
    |            //EarnUntil = (N+1)*5 coins earned max/minutes we can earn from
  > |            pxlProperty.setPropertyBecomePublicEarnUntil(propertyID, now + (pxlSpent * PROPERTY_GENERATION_PAYOUT_INTERVAL / 2), now + (pxlSpent * 5 * PROPERTY_GENERATION_PAYOUT_INTERVAL));
    |        } else {
    |            return false;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(760)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |            return false;
    |        }
  > |        pxlProperty.setPropertyLastUpdaterLastUpdate(propertyID, msg.sender, now);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(764)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    function _transferProperty(uint16 propertyID, address newOwner, uint256 ethAmount, uint256 PXLAmount, uint8 flag, address oldOwner) private {
    |        require(newOwner != 0);
  > |        pxlProperty.setPropertyOwnerSalePricePrivateModeFlag(propertyID, newOwner, 0, false, flag);
    |        PropertyBought(propertyID, newOwner, ethAmount, PXLAmount, now, oldOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(770)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Gets the (owners address, Ethereum sale price, PXL sale price, last update timestamp, whether its in private mode or not, when it becomes public timestamp, flag) for a Property
    |    function getPropertyData(uint16 propertyID) public validPropertyID(propertyID) view returns(address, uint256, uint256, uint256, bool, uint256, uint32) {
  > |        return pxlProperty.getPropertyData(propertyID, systemSalePriceETH, systemSalePricePXL);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(776)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Gets the sale prices of any Property in ETH and PXL
    |    function getForSalePrices(uint16 propertyID) public validPropertyID(propertyID) view returns(uint256, uint256) {
  > |        if (pxlProperty.getPropertyOwner(propertyID) == 0) {
    |            return getSystemSalePrices();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(786)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |            return getSystemSalePrices();
    |        } else {
  > |            return (0, pxlProperty.getPropertySalePrice(propertyID));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(789)

[33mWarning[0m for UnhandledException in contract 'VirtualRealEstate':
    |    // Gets the projected sale price for a property should it be triggered at this very moment
    |    function getProjectedPayout(uint16 propertyID) public view returns(uint256) {
  > |        var (propertyIsInPrivateMode, propertyLastUpdate, propertyEarnUntil) = pxlProperty.getPropertyPrivateModeLastUpdateEarnUntil(propertyID);
    |        return getProjectedPayout(propertyIsInPrivateMode, propertyLastUpdate, propertyEarnUntil);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(795)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Property owners can change their hoverText for when a user mouses over their Properties
    |    function setHoverText(uint256[2] text) public {
  > |        pxlProperty.setOwnerHoverText(msg.sender, text);
    |        SetUserHoverText(msg.sender, text);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(499)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Property owners can change the clickable link for when a user clicks on their Properties
    |    function setLink(uint256[2] website) public {
  > |        pxlProperty.setOwnerLink(msg.sender, website);
    |        SetUserSetLink(msg.sender, website);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(505)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // If a Property is private which has expired, make it public
    |    function tryForcePublic(uint16 propertyID) public validPropertyID(propertyID) { 
  > |        var (isInPrivateMode, becomePublic) = pxlProperty.getPropertyPrivateModeBecomePublic(propertyID);
    |        if (isInPrivateMode && becomePublic < now) {
    |            pxlProperty.setPropertyPrivateMode(propertyID, false);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(511)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        var (isInPrivateMode, becomePublic) = pxlProperty.getPropertyPrivateModeBecomePublic(propertyID);
    |        if (isInPrivateMode && becomePublic < now) {
  > |            pxlProperty.setPropertyPrivateMode(propertyID, false);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(513)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        uint256 projectedPayout = getProjectedPayout(propertyID);
    |        if (_tryTriggerPayout(propertyID, PXLToSpend)) {
  > |            pxlProperty.setPropertyRowColor(propertyID, row, newColorData);
    |            var (lastUpdater, becomePublic) = pxlProperty.getPropertyLastUpdaterBecomePublic(propertyID);
    |            PropertyColorUpdate(propertyID, pxlProperty.getPropertyColors(propertyID), now, lastUpdater, becomePublic, projectedPayout);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(559)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        if (_tryTriggerPayout(propertyID, PXLToSpend)) {
    |            pxlProperty.setPropertyRowColor(propertyID, row, newColorData);
  > |            var (lastUpdater, becomePublic) = pxlProperty.getPropertyLastUpdaterBecomePublic(propertyID);
    |            PropertyColorUpdate(propertyID, pxlProperty.getPropertyColors(propertyID), now, lastUpdater, becomePublic, projectedPayout);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |            pxlProperty.setPropertyRowColor(propertyID, row, newColorData);
    |            var (lastUpdater, becomePublic) = pxlProperty.getPropertyLastUpdaterBecomePublic(propertyID);
  > |            PropertyColorUpdate(propertyID, pxlProperty.getPropertyColors(propertyID), now, lastUpdater, becomePublic, projectedPayout);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(561)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Property owners can toggle their Properties between private mode and free-use mode
    |    function setPropertyMode(uint16 propertyID, bool setPrivateMode, uint32 numMinutesPrivate) public validPropertyID(propertyID) {
  > |        var (propertyFlag, propertyIsInPrivateMode, propertyOwner, propertyLastUpdater, propertySalePrice, propertyLastUpdate, propertyBecomePublic, propertyEarnUntil) = pxlProperty.properties(propertyID);
    |        
    |        require(msg.sender == propertyOwner);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(568)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |            require(propertyIsInPrivateMode || propertyBecomePublic <= now || propertyLastUpdater == msg.sender ); 
    |            require(numMinutesPrivate > 0);
  > |            require(pxlProperty.balanceOf(msg.sender) >= numMinutesPrivate);
    |            // Determines when the Property becomes public, one payout interval per coin burned
    |            whenToBecomePublic = (now < propertyBecomePublic ? propertyBecomePublic : now) + PROPERTY_GENERATION_PAYOUT_INTERVAL * numMinutesPrivate;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(578)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |            rewardedAmount = getProjectedPayout(propertyIsInPrivateMode, propertyLastUpdate, propertyEarnUntil);
    |            if (rewardedAmount > 0 && propertyLastUpdater != 0) {
  > |                pxlProperty.burnPXLRewardPXLx2(msg.sender, numMinutesPrivate, propertyLastUpdater, rewardedAmount, msg.sender, rewardedAmount);
    |            } else {
    |                pxlProperty.burnPXL(msg.sender, numMinutesPrivate);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(584)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |                pxlProperty.burnPXLRewardPXLx2(msg.sender, numMinutesPrivate, propertyLastUpdater, rewardedAmount, msg.sender, rewardedAmount);
    |            } else {
  > |                pxlProperty.burnPXL(msg.sender, numMinutesPrivate);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(586)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |            // If its in private mode and still has time left, reimburse them for N-1 minutes tokens back
    |            if (propertyIsInPrivateMode && propertyBecomePublic > now) {
  > |                pxlProperty.rewardPXL(msg.sender, ((propertyBecomePublic - now) / PROPERTY_GENERATION_PAYOUT_INTERVAL) - 1);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(592)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        }
    |        
  > |        pxlProperty.setPropertyPrivateModeEarnUntilLastUpdateBecomePublic(propertyID, setPrivateMode, 0, 0, whenToBecomePublic);
    |        
    |        if (setPrivateMode) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(596)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Transfer Property ownership between accounts. This has no cost, no cut and does not change flag status
    |    function transferProperty(uint16 propertyID, address newOwner) public validPropertyID(propertyID) returns(bool) {
  > |        require(pxlProperty.getPropertyOwner(propertyID) == msg.sender);
    |        _transferProperty(propertyID, newOwner, 0, 0, pxlProperty.getPropertyFlag(propertyID), msg.sender);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(606)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    function transferProperty(uint16 propertyID, address newOwner) public validPropertyID(propertyID) returns(bool) {
    |        require(pxlProperty.getPropertyOwner(propertyID) == msg.sender);
  > |        _transferProperty(propertyID, newOwner, 0, 0, pxlProperty.getPropertyFlag(propertyID), msg.sender);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(607)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    function buyProperty(uint16 propertyID, uint256 pxlValue) public validPropertyID(propertyID) payable returns(bool) {
    |        //Must be the first purchase, otherwise do it with PXL from another user
  > |        require(pxlProperty.getPropertyOwner(propertyID) == 0);
    |        // Must be able to afford the given PXL
    |        require(pxlProperty.balanceOf(msg.sender) >= pxlValue);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(613)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        require(pxlProperty.getPropertyOwner(propertyID) == 0);
    |        // Must be able to afford the given PXL
  > |        require(pxlProperty.balanceOf(msg.sender) >= pxlValue);
    |        require(pxlValue != 0);
    |        
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(615)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        require(msg.value >= ethLeft);
    |        
  > |        pxlProperty.burnPXLRewardPXL(msg.sender, pxlValue, owner, pxlValue);
    |        
    |        systemPXLStepTally += uint16(100 * pxlValue / systemSalePricePXL);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(626)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    function buyPropertyInPXL(uint16 propertyID, uint256 PXLValue) public validPropertyID(propertyID) {
    |        // If Property is system-owned
  > |        var (propertyOwner, propertySalePrice) = pxlProperty.getPropertyOwnerSalePrice(propertyID);
    |        address originalOwner = propertyOwner;
    |        if (propertyOwner == 0) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(651)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        if (propertyOwner == 0) {
    |            // Turn it into a user-owned at system price with contract owner as owner
  > |            pxlProperty.setPropertyOwnerSalePrice(propertyID, owner, systemSalePricePXL);
    |            propertyOwner = owner;
    |            propertySalePrice = systemSalePricePXL;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(655)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        require(propertySalePrice <= PXLValue);
    |        uint256 amountTransfered = propertySalePrice * USER_BUY_CUT_PERCENT / 100;
  > |        pxlProperty.burnPXLRewardPXLx2(msg.sender, propertySalePrice, propertyOwner, amountTransfered, owner, (propertySalePrice - amountTransfered));        
    |        _transferProperty(propertyID, msg.sender, 0, propertySalePrice, 0, originalOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(668)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Purchase a system-Property in pure ETH
    |    function buyPropertyInETH(uint16 propertyID) public validPropertyID(propertyID) payable returns(bool) {
  > |        require(pxlProperty.getPropertyOwner(propertyID) == 0);
    |        require(msg.value >= systemSalePriceETH);
    |        
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(674)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    function listForSale(uint16 propertyID, uint256 price) public validPropertyID(propertyID) returns(bool) {
    |        require(price != 0);
  > |        require(msg.sender == pxlProperty.getPropertyOwner(propertyID));
    |        pxlProperty.setPropertySalePrice(propertyID, price);
    |        PropertySetForSale(propertyID, price);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        require(price != 0);
    |        require(msg.sender == pxlProperty.getPropertyOwner(propertyID));
  > |        pxlProperty.setPropertySalePrice(propertyID, price);
    |        PropertySetForSale(propertyID, price);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(692)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Property owner delists their Property from being for sale
    |    function delist(uint16 propertyID) public validPropertyID(propertyID) returns(bool) {
  > |        require(msg.sender == pxlProperty.getPropertyOwner(propertyID));
    |        pxlProperty.setPropertySalePrice(propertyID, 0);
    |        DelistProperty(propertyID);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(699)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    function delist(uint16 propertyID) public validPropertyID(propertyID) returns(bool) {
    |        require(msg.sender == pxlProperty.getPropertyOwner(propertyID));
  > |        pxlProperty.setPropertySalePrice(propertyID, 0);
    |        DelistProperty(propertyID);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(700)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    function makeBid(uint16 propertyID, uint256 bidAmount) public validPropertyID(propertyID) {
    |        require(bidAmount > 0);
  > |        require(pxlProperty.balanceOf(msg.sender) >= 1 + bidAmount);
    |        Bid(propertyID, bidAmount, now);
    |        pxlProperty.burnPXL(msg.sender, 1);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(708)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        require(pxlProperty.balanceOf(msg.sender) >= 1 + bidAmount);
    |        Bid(propertyID, bidAmount, now);
  > |        pxlProperty.burnPXL(msg.sender, 1);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(710)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Contract owner can withdraw ownerEth amount
    |    function withdrawAll() public ownerOnly() {
  > |        owner.transfer(ownerEth);
    |        ownerEth = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Function which wraps payouts for setColors
    |    function _tryTriggerPayout(uint16 propertyID, uint256 pxlToSpend) private returns(bool) {
  > |        var (propertyFlag, propertyIsInPrivateMode, propertyOwner, propertyLastUpdater, propertySalePrice, propertyLastUpdate, propertyBecomePublic, propertyEarnUntil) = pxlProperty.properties(propertyID);
    |        //If the Property is in private mode and expired, make it public
    |        if (propertyIsInPrivateMode && propertyBecomePublic <= now) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(738)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |        //If the Property is in private mode and expired, make it public
    |        if (propertyIsInPrivateMode && propertyBecomePublic <= now) {
  > |            pxlProperty.setPropertyPrivateMode(propertyID, false);
    |            propertyIsInPrivateMode = false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(741)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |            
    |            uint256 projectedAmount = getProjectedPayout(propertyIsInPrivateMode, propertyLastUpdate, propertyEarnUntil);
  > |            pxlProperty.burnPXLRewardPXLx2(msg.sender, pxlToSpend, propertyLastUpdater, projectedAmount, propertyOwner, projectedAmount);
    |            
    |            //BecomePublic = (N+1)/2 minutes of user-private mode
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(756)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |            //BecomePublic = (N+1)/2 minutes of user-private mode
    |            //EarnUntil = (N+1)*5 coins earned max/minutes we can earn from
  > |            pxlProperty.setPropertyBecomePublicEarnUntil(propertyID, now + (pxlSpent * PROPERTY_GENERATION_PAYOUT_INTERVAL / 2), now + (pxlSpent * 5 * PROPERTY_GENERATION_PAYOUT_INTERVAL));
    |        } else {
    |            return false;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(760)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |            return false;
    |        }
  > |        pxlProperty.setPropertyLastUpdaterLastUpdate(propertyID, msg.sender, now);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(764)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    function _transferProperty(uint16 propertyID, address newOwner, uint256 ethAmount, uint256 PXLAmount, uint8 flag, address oldOwner) private {
    |        require(newOwner != 0);
  > |        pxlProperty.setPropertyOwnerSalePricePrivateModeFlag(propertyID, newOwner, 0, false, flag);
    |        PropertyBought(propertyID, newOwner, ethAmount, PXLAmount, now, oldOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(770)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Gets the (owners address, Ethereum sale price, PXL sale price, last update timestamp, whether its in private mode or not, when it becomes public timestamp, flag) for a Property
    |    function getPropertyData(uint16 propertyID) public validPropertyID(propertyID) view returns(address, uint256, uint256, uint256, bool, uint256, uint32) {
  > |        return pxlProperty.getPropertyData(propertyID, systemSalePriceETH, systemSalePricePXL);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(776)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Gets the sale prices of any Property in ETH and PXL
    |    function getForSalePrices(uint16 propertyID) public validPropertyID(propertyID) view returns(uint256, uint256) {
  > |        if (pxlProperty.getPropertyOwner(propertyID) == 0) {
    |            return getSystemSalePrices();
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(786)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |            return getSystemSalePrices();
    |        } else {
  > |            return (0, pxlProperty.getPropertySalePrice(propertyID));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(789)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    // Gets the projected sale price for a property should it be triggered at this very moment
    |    function getProjectedPayout(uint16 propertyID) public view returns(uint256) {
  > |        var (propertyIsInPrivateMode, propertyLastUpdate, propertyEarnUntil) = pxlProperty.getPropertyPrivateModeLastUpdateEarnUntil(propertyID);
    |        return getProjectedPayout(propertyIsInPrivateMode, propertyLastUpdate, propertyEarnUntil);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(795)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VirtualRealEstate':
    |    function withdraw(uint256 amount) public ownerOnly() {
    |        if (amount <= ownerEth) {
  > |            owner.transfer(amount);
    |            ownerEth -= amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(718)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        for(uint256 i = 0; i < 4; i++) {
    |            require(propertyIDs[i] < 10000);
  > |            results[i] = setColors(propertyIDs[i], [newColors[i * 5], newColors[i * 5 + 1], newColors[i * 5 + 2], newColors[i * 5 + 3], newColors[i * 5 + 4]], PXLToSpendEach);
    |        }
    |        return results;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(539)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        for(uint256 i = 0; i < 8; i++) {
    |            require(propertyIDs[i] < 10000);
  > |            results[i] = setColors(propertyIDs[i], [newColors[i * 5], newColors[i * 5 + 1], newColors[i * 5 + 2], newColors[i * 5 + 3], newColors[i * 5 + 4]], PXLToSpendEach);
    |        }
    |        return results;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(549)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        pxlProperty.burnPXLRewardPXL(msg.sender, pxlValue, owner, pxlValue);
    |        
  > |        systemPXLStepTally += uint16(100 * pxlValue / systemSalePricePXL);
    |        if (systemPXLStepTally >= 1000) {
    |             systemPXLStepCount++;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(628)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        systemPXLStepTally += uint16(100 * pxlValue / systemSalePricePXL);
    |        if (systemPXLStepTally >= 1000) {
  > |             systemPXLStepCount++;
    |            systemSalePricePXL += systemSalePricePXL * 9 / systemPXLStepCount / 10;
    |            systemPXLStepTally -= 1000;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(630)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        if (systemPXLStepTally >= 1000) {
    |             systemPXLStepCount++;
  > |            systemSalePricePXL += systemSalePricePXL * 9 / systemPXLStepCount / 10;
    |            systemPXLStepTally -= 1000;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(631)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |             systemPXLStepCount++;
    |            systemSalePricePXL += systemSalePricePXL * 9 / systemPXLStepCount / 10;
  > |            systemPXLStepTally -= 1000;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(632)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        }
    |        
  > |        ownerEth += msg.value;
    |
    |        systemETHStepTally += uint16(100 * pxlLeft / systemSalePricePXL);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(635)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        ownerEth += msg.value;
    |
  > |        systemETHStepTally += uint16(100 * pxlLeft / systemSalePricePXL);
    |        if (systemETHStepTally >= 1000) {
    |            systemETHStepCount++;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(637)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        systemETHStepTally += uint16(100 * pxlLeft / systemSalePricePXL);
    |        if (systemETHStepTally >= 1000) {
  > |            systemETHStepCount++;
    |            systemSalePriceETH += systemSalePriceETH * 9 / systemETHStepCount / 10;
    |            systemETHStepTally -= 1000;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(639)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        if (systemETHStepTally >= 1000) {
    |            systemETHStepCount++;
  > |            systemSalePriceETH += systemSalePriceETH * 9 / systemETHStepCount / 10;
    |            systemETHStepTally -= 1000;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(640)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |            systemETHStepCount++;
    |            systemSalePriceETH += systemSalePriceETH * 9 / systemETHStepCount / 10;
  > |            systemETHStepTally -= 1000;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(641)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |            propertySalePrice = systemSalePricePXL;
    |            // Increase system PXL price
  > |            systemPXLStepTally += 100;
    |            if (systemPXLStepTally >= 1000) {
    |                systemPXLStepCount++;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(659)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |            systemPXLStepTally += 100;
    |            if (systemPXLStepTally >= 1000) {
  > |                systemPXLStepCount++;
    |                systemSalePricePXL += systemSalePricePXL * 9 / systemPXLStepCount / 10;
    |                systemPXLStepTally -= 1000;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(661)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |            if (systemPXLStepTally >= 1000) {
    |                systemPXLStepCount++;
  > |                systemSalePricePXL += systemSalePricePXL * 9 / systemPXLStepCount / 10;
    |                systemPXLStepTally -= 1000;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(662)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |                systemPXLStepCount++;
    |                systemSalePricePXL += systemSalePricePXL * 9 / systemPXLStepCount / 10;
  > |                systemPXLStepTally -= 1000;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(663)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        require(msg.value >= systemSalePriceETH);
    |        
  > |        ownerEth += msg.value;
    |        systemETHStepTally += 100;
    |        if (systemETHStepTally >= 1000) {
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(677)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        
    |        ownerEth += msg.value;
  > |        systemETHStepTally += 100;
    |        if (systemETHStepTally >= 1000) {
    |            systemETHStepCount++;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(678)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        systemETHStepTally += 100;
    |        if (systemETHStepTally >= 1000) {
  > |            systemETHStepCount++;
    |            systemSalePriceETH += systemSalePriceETH * 9 / systemETHStepCount / 10;
    |            systemETHStepTally -= 1000;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(680)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        if (systemETHStepTally >= 1000) {
    |            systemETHStepCount++;
  > |            systemSalePriceETH += systemSalePriceETH * 9 / systemETHStepCount / 10;
    |            systemETHStepTally -= 1000;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(681)

[31mViolation[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |            systemETHStepCount++;
    |            systemSalePriceETH += systemSalePriceETH * 9 / systemETHStepCount / 10;
  > |            systemETHStepTally -= 1000;
    |        }
    |        _transferProperty(propertyID, msg.sender, msg.value, 0, 0, 0);
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(682)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |    
    |    function setPXLPropertyContract(address pxlPropertyContract) public ownerOnly() {
  > |        pxlProperty = PXLProperty(pxlPropertyContract);
    |        if (!initialPropertiesReserved) {
    |            uint16 xReserved = 45;
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |                _transferProperty(propertyID, owner, 0, 0, 0, 0);
    |            }
  > |            initialPropertiesReserved = true;
    |            GRACE_PERIOD_END_TIMESTAMP = now + 3 days; // Extends the three 
    |        }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(486)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |            }
    |            initialPropertiesReserved = true;
  > |            GRACE_PERIOD_END_TIMESTAMP = now + 3 days; // Extends the three 
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |        if (amount <= ownerEth) {
    |            owner.transfer(amount);
  > |            ownerEth -= amount;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(719)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |    function withdrawAll() public ownerOnly() {
    |        owner.transfer(ownerEth);
  > |        ownerEth = 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(726)

[33mWarning[0m for UnrestrictedWrite in contract 'VirtualRealEstate':
    |    // Contract owner can change who is the contract owner
    |    function changeOwners(address newOwner) public ownerOnly() {
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x89695d5b003eb6a546c1b6d3b272c36e423e9477.sol(731)


