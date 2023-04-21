Processing contract: /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol:PXLProperty
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol:Token
[31mViolation[0m for LockedEther in contract 'PXLProperty':
    |    Moderation is handled inside PXLProperty, not by external DApps. It's up to other apps to respect the flags, however
    |*/
  > |contract PXLProperty is StandardToken {
    |    /* Access Level Constants */
    |    uint8 constant LEVEL_1_MODERATOR = 1;    // 1: Level 1 Moderator - nsfw-flagging power
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    Moderation is handled inside PXLProperty, not by external DApps. It's up to other apps to respect the flags, however
    |*/
  > |contract PXLProperty is StandardToken {
    |    /* Access Level Constants */
    |    uint8 constant LEVEL_1_MODERATOR = 1;    // 1: Level 1 Moderator - nsfw-flagging power
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    // Moderator Flags
    |    function setPropertyFlag(uint16 propertyID, uint8 flag) public regulatorAccess(flag == FLAG_NSFW ? LEVEL_1_MODERATOR : LEVEL_2_MODERATOR) {
  > |        properties[propertyID].flag = flag;
    |        if (flag == FLAG_BAN) {
    |            require(properties[propertyID].isInPrivateMode); //Can't ban an owner's property if a public user caused the NSFW content
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(newPixelPropertyContract != 0);
    |        if (pixelPropertyContract != 0) {
  > |            regulators[pixelPropertyContract] = 0; //If we already have a pixelPropertyContract, revoke its ownership
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        
  > |        pixelPropertyContract = newPixelPropertyContract;
    |        regulators[newPixelPropertyContract] = LEVEL_PIXEL_PROPERTY;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(157)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        
    |        pixelPropertyContract = newPixelPropertyContract;
  > |        regulators[newPixelPropertyContract] = LEVEL_PIXEL_PROPERTY;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyDAppContract(address propertyDAppContract, bool giveAccess) public regulatorAccess(LEVEL_1_ROOT) {
    |        require(propertyDAppContract != 0);
  > |        regulators[propertyDAppContract] = giveAccess ? LEVEL_PROPERTY_DAPPS : 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyRowColor(uint16 propertyID, uint8 row, uint256 rowColor) public propertyDAppAccess() {
    |        if (properties[propertyID].colors[row] != rowColor) {
  > |            properties[propertyID].colors[row] = rowColor;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyPrivateMode(uint16 propertyID, bool isInPrivateMode) public pixelPropertyAccess() {
    |        if (properties[propertyID].isInPrivateMode != isInPrivateMode) {
  > |            properties[propertyID].isInPrivateMode = isInPrivateMode;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyOwner(uint16 propertyID, address propertyOwner) public pixelPropertyAccess() {
    |        if (properties[propertyID].owner != propertyOwner) {
  > |            properties[propertyID].owner = propertyOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyLastUpdater(uint16 propertyID, address lastUpdater) public pixelPropertyAccess() {
    |        if (properties[propertyID].lastUpdater != lastUpdater) {
  > |            properties[propertyID].lastUpdater = lastUpdater;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertySalePrice(uint16 propertyID, uint256 salePrice) public pixelPropertyAccess() {
    |        if (properties[propertyID].salePrice != salePrice) {
  > |            properties[propertyID].salePrice = salePrice;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    
    |    function setPropertyLastUpdate(uint16 propertyID, uint256 lastUpdate) public pixelPropertyAccess() {
  > |        properties[propertyID].lastUpdate = lastUpdate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    
    |    function setPropertyBecomePublic(uint16 propertyID, uint256 becomePublic) public pixelPropertyAccess() {
  > |        properties[propertyID].becomePublic = becomePublic;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    
    |    function setPropertyEarnUntil(uint16 propertyID, uint256 earnUntil) public pixelPropertyAccess() {
  > |        properties[propertyID].earnUntil = earnUntil;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyPrivateModeEarnUntilLastUpdateBecomePublic(uint16 propertyID, bool privateMode, uint256 earnUntil, uint256 lastUpdate, uint256 becomePublic) public pixelPropertyAccess() {
    |        if (properties[propertyID].isInPrivateMode != privateMode) {
  > |            properties[propertyID].isInPrivateMode = privateMode;
    |        }
    |        properties[propertyID].earnUntil = earnUntil;
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(230)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |            properties[propertyID].isInPrivateMode = privateMode;
    |        }
  > |        properties[propertyID].earnUntil = earnUntil;
    |        properties[propertyID].lastUpdate = lastUpdate;
    |        properties[propertyID].becomePublic = becomePublic;
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(232)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        properties[propertyID].earnUntil = earnUntil;
  > |        properties[propertyID].lastUpdate = lastUpdate;
    |        properties[propertyID].becomePublic = becomePublic;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(233)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        properties[propertyID].earnUntil = earnUntil;
    |        properties[propertyID].lastUpdate = lastUpdate;
  > |        properties[propertyID].becomePublic = becomePublic;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyLastUpdaterLastUpdate(uint16 propertyID, address lastUpdater, uint256 lastUpdate) public pixelPropertyAccess() {
    |        if (properties[propertyID].lastUpdater != lastUpdater) {
  > |            properties[propertyID].lastUpdater = lastUpdater;
    |        }
    |        properties[propertyID].lastUpdate = lastUpdate;
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |            properties[propertyID].lastUpdater = lastUpdater;
    |        }
  > |        properties[propertyID].lastUpdate = lastUpdate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(241)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    
    |    function setPropertyBecomePublicEarnUntil(uint16 propertyID, uint256 becomePublic, uint256 earnUntil) public pixelPropertyAccess() {
  > |        properties[propertyID].becomePublic = becomePublic;
    |        properties[propertyID].earnUntil = earnUntil;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyBecomePublicEarnUntil(uint16 propertyID, uint256 becomePublic, uint256 earnUntil) public pixelPropertyAccess() {
    |        properties[propertyID].becomePublic = becomePublic;
  > |        properties[propertyID].earnUntil = earnUntil;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyOwnerSalePricePrivateModeFlag(uint16 propertyID, address owner, uint256 salePrice, bool privateMode, uint8 flag) public pixelPropertyAccess() {
    |        if (properties[propertyID].owner != owner) {
  > |            properties[propertyID].owner = owner;
    |        }
    |        if (properties[propertyID].salePrice != salePrice) {
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (properties[propertyID].salePrice != salePrice) {
  > |            properties[propertyID].salePrice = salePrice;
    |        }
    |        if (properties[propertyID].isInPrivateMode != privateMode) {
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(254)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (properties[propertyID].isInPrivateMode != privateMode) {
  > |            properties[propertyID].isInPrivateMode = privateMode;
    |        }
    |        if (properties[propertyID].flag != flag) {
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(257)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (properties[propertyID].flag != flag) {
  > |            properties[propertyID].flag = flag;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function setPropertyOwnerSalePrice(uint16 propertyID, address owner, uint256 salePrice) public pixelPropertyAccess() {
    |        if (properties[propertyID].owner != owner) {
  > |            properties[propertyID].owner = owner;
    |        }
    |        if (properties[propertyID].salePrice != salePrice) {
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(266)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (properties[propertyID].salePrice != salePrice) {
  > |            properties[propertyID].salePrice = salePrice;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(269)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function rewardPXL(address rewardedUser, uint256 amount) public pixelPropertyAccess() {
    |        require(rewardedUser != 0);
  > |        balances[rewardedUser] += amount;
    |        totalSupply += amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(276)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(rewardedUser != 0);
    |        balances[rewardedUser] += amount;
  > |        totalSupply += amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(277)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(burningUser != 0);
    |        require(balances[burningUser] >= amount);
  > |        balances[burningUser] -= amount;
    |        totalSupply -= amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(283)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(balances[burningUser] >= amount);
    |        balances[burningUser] -= amount;
  > |        totalSupply -= amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(284)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(balances[burner] >= toBurn);
    |        if (toBurn > 0) {
  > |            balances[burner] -= toBurn;
    |            totalSupply -= toBurn;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(290)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (toBurn > 0) {
    |            balances[burner] -= toBurn;
  > |            totalSupply -= toBurn;
    |        }
    |        if (rewarder != 0) {
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(291)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (rewarder != 0) {
  > |            balances[rewarder] += toReward;
    |            totalSupply += toReward;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(294)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (rewarder != 0) {
    |            balances[rewarder] += toReward;
  > |            totalSupply += toReward;
    |        }
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(295)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        require(balances[burner] >= toBurn);
    |        if (toBurn > 0) {
  > |            balances[burner] -= toBurn;
    |            totalSupply -= toBurn;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (toBurn > 0) {
    |            balances[burner] -= toBurn;
  > |            totalSupply -= toBurn;
    |        }
    |        if (rewarder1 != 0) {
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (rewarder1 != 0) {
  > |            balances[rewarder1] += toReward1;
    |            totalSupply += toReward1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (rewarder1 != 0) {
    |            balances[rewarder1] += toReward1;
  > |            totalSupply += toReward1;
    |        }
    |        if (rewarder2 != 0) {
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(307)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        if (rewarder2 != 0) {
  > |            balances[rewarder2] += toReward2;
    |            totalSupply += toReward2;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(310)

[31mViolation[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        if (rewarder2 != 0) {
    |            balances[rewarder2] += toReward2;
  > |            totalSupply += toReward2;
    |        }
    |    } 
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'PXLProperty':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'PXLProperty':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'PXLProperty':
    |        }
    |        require(regulators[msg.sender] > accessLevel); // You have to be a higher rank than the role you are setting
  > |        regulators[user] = accessLevel;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(148)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |// ERC20 Token Implementation
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |// ERC20 Token Implementation
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |// ERC20 Token Interface
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf07d979303c50a8632848cb154c6b30980218c07.sol(45)


