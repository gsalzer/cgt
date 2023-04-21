Processing contract: /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol:CryptoPornstarAward
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol:PornSceneToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol:PornstarsInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CryptoPornstarAward':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[33mWarning[0m for DAOConstantGas in contract 'CryptoPornstarAward':
    |    TokenSold(_tokenId, sellingPrice, sceneIndexToPrice[_tokenId], oldOwner, newOwner, _scene.name, _scene.stars);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(267)

[33mWarning[0m for DAOConstantGas in contract 'CryptoPornstarAward':
    |        
    |        if(_isGoodAddress(_pornstarOwner)) {
  > |            _pornstarOwner.transfer(fee);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(276)

[33mWarning[0m for DAOConstantGas in contract 'CryptoPornstarAward':
    |    
    |    if(_isGoodAddress(_awardOwner)) {
  > |        _awardOwner.transfer(fee);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(286)

[33mWarning[0m for DAOConstantGas in contract 'CryptoPornstarAward':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[33mWarning[0m for DAOConstantGas in contract 'CryptoPornstarAward':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for LockedEther in contract 'CryptoPornstarAward':
    |}
    |
  > |contract CryptoPornstarAward is PornSceneToken{
    |    event Award(uint256 currentAwardWinner, uint32 awardTime);
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(484)

[31mViolation[0m for TODAmount in contract 'CryptoPornstarAward':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[31mViolation[0m for TODAmount in contract 'CryptoPornstarAward':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for TODAmount in contract 'CryptoPornstarAward':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[31mViolation[0m for TODReceiver in contract 'CryptoPornstarAward':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[33mWarning[0m for TODReceiver in contract 'CryptoPornstarAward':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[33mWarning[0m for TODReceiver in contract 'CryptoPornstarAward':
    |    TokenSold(_tokenId, sellingPrice, sceneIndexToPrice[_tokenId], oldOwner, newOwner, _scene.name, _scene.stars);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(267)

[33mWarning[0m for TODReceiver in contract 'CryptoPornstarAward':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |    TokenSold(_tokenId, sellingPrice, sceneIndexToPrice[_tokenId], oldOwner, newOwner, _scene.name, _scene.stars);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(267)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |    for (uint i = 0; i < _scene.stars.length; i++) {
    |        address _pornstarOwner;
  > |        (_pornstarOwner) = pornstarsContract.ownerOf(_scene.stars[i]);
    |        
    |        if(_isGoodAddress(_pornstarOwner)) {
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(273)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |        
    |        if(_isGoodAddress(_pornstarOwner)) {
  > |            _pornstarOwner.transfer(fee);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(276)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |  function _payAwardOwner(uint256 fee) private {
    |    address _awardOwner;
  > |    (_awardOwner) = pornstarsContract.ownerOf(currentAwardWinner);
    |    
    |    if(_isGoodAddress(_awardOwner)) {
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(283)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |    
    |    if(_isGoodAddress(_awardOwner)) {
  > |        _awardOwner.transfer(fee);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(286)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |    for (uint i = 0; i < _stars.length; i++) {
    |        address _pornstarOwner;
  > |        (_pornstarOwner) = pornstarsContract.ownerOf(_stars[i]);
    |        require(_pornstarOwner != address(0) || _pornstarOwner != address(0x0));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(428)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for UnhandledException in contract 'CryptoPornstarAward':
    |    function newAward() public onlyCOO {        
    |        uint256 _totalPornstars;
  > |        (_totalPornstars) = pornstarsContract.totalSupply();
    |        
    |        require(_totalPornstars > 0);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(520)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoPornstarAward':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoPornstarAward':
    |    for (uint i = 0; i < _scene.stars.length; i++) {
    |        address _pornstarOwner;
  > |        (_pornstarOwner) = pornstarsContract.ownerOf(_scene.stars[i]);
    |        
    |        if(_isGoodAddress(_pornstarOwner)) {
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(273)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoPornstarAward':
    |  function _payAwardOwner(uint256 fee) private {
    |    address _awardOwner;
  > |    (_awardOwner) = pornstarsContract.ownerOf(currentAwardWinner);
    |    
    |    if(_isGoodAddress(_awardOwner)) {
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoPornstarAward':
    |    for (uint i = 0; i < _stars.length; i++) {
    |        address _pornstarOwner;
  > |        (_pornstarOwner) = pornstarsContract.ownerOf(_stars[i]);
    |        require(_pornstarOwner != address(0) || _pornstarOwner != address(0x0));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoPornstarAward':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoPornstarAward':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoPornstarAward':
    |    function newAward() public onlyCOO {        
    |        uint256 _totalPornstars;
  > |        (_totalPornstars) = pornstarsContract.totalSupply();
    |        
    |        require(_totalPornstars > 0);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(520)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    sceneIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |  
    |  function setPornstarsContractAddress(address _address) public onlyCOO {
  > |      pornstarsContract = PornstarsInterface(_address);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    }
    |
  > |    promoCreatedCount++;
    |    _createScene(_name, _stars, sceneOwner, _price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      sceneIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 94);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      sceneIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 94);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    } else {
    |      // third stage
  > |      sceneIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 94);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of scenes is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    sceneIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    sceneIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new scenes _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    // When creating new scenes _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete sceneIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete sceneIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    
    |    function _triggerCooldown() internal {
  > |        awardTime = uint32(now + cooldownTime);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    
    |    function rand(uint min, uint max) internal returns (uint) {
  > |        nonce++;
    |        return uint(keccak256(nonce))%(min+max)-min;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |    function setCooldown(uint _newCooldown) public onlyCOO {
    |        require (_newCooldown > 0);
  > |        cooldownTime = _newCooldown;
    |        _triggerCooldown();
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(506)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoPornstarAward':
    |        require(_isTime());
    |        
  > |        currentAwardWinner = rand(0, _totalPornstars);
    |        _triggerCooldown();
    |        
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(525)

[33mWarning[0m for DAOConstantGas in contract 'PornSceneToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[33mWarning[0m for DAOConstantGas in contract 'PornSceneToken':
    |    TokenSold(_tokenId, sellingPrice, sceneIndexToPrice[_tokenId], oldOwner, newOwner, _scene.name, _scene.stars);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(267)

[33mWarning[0m for DAOConstantGas in contract 'PornSceneToken':
    |        
    |        if(_isGoodAddress(_pornstarOwner)) {
  > |            _pornstarOwner.transfer(fee);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(276)

[33mWarning[0m for DAOConstantGas in contract 'PornSceneToken':
    |    
    |    if(_isGoodAddress(_awardOwner)) {
  > |        _awardOwner.transfer(fee);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(286)

[33mWarning[0m for DAOConstantGas in contract 'PornSceneToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[33mWarning[0m for DAOConstantGas in contract 'PornSceneToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for LockedEther in contract 'PornSceneToken':
    |}
    |
  > |contract PornSceneToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(36)

[31mViolation[0m for TODAmount in contract 'PornSceneToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[31mViolation[0m for TODAmount in contract 'PornSceneToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for TODAmount in contract 'PornSceneToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[31mViolation[0m for TODReceiver in contract 'PornSceneToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[33mWarning[0m for TODReceiver in contract 'PornSceneToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[33mWarning[0m for TODReceiver in contract 'PornSceneToken':
    |    TokenSold(_tokenId, sellingPrice, sceneIndexToPrice[_tokenId], oldOwner, newOwner, _scene.name, _scene.stars);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(267)

[33mWarning[0m for TODReceiver in contract 'PornSceneToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for UnhandledException in contract 'PornSceneToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[33mWarning[0m for UnhandledException in contract 'PornSceneToken':
    |    TokenSold(_tokenId, sellingPrice, sceneIndexToPrice[_tokenId], oldOwner, newOwner, _scene.name, _scene.stars);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(267)

[33mWarning[0m for UnhandledException in contract 'PornSceneToken':
    |    for (uint i = 0; i < _scene.stars.length; i++) {
    |        address _pornstarOwner;
  > |        (_pornstarOwner) = pornstarsContract.ownerOf(_scene.stars[i]);
    |        
    |        if(_isGoodAddress(_pornstarOwner)) {
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(273)

[33mWarning[0m for UnhandledException in contract 'PornSceneToken':
    |        
    |        if(_isGoodAddress(_pornstarOwner)) {
  > |            _pornstarOwner.transfer(fee);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(276)

[33mWarning[0m for UnhandledException in contract 'PornSceneToken':
    |  function _payAwardOwner(uint256 fee) private {
    |    address _awardOwner;
  > |    (_awardOwner) = pornstarsContract.ownerOf(currentAwardWinner);
    |    
    |    if(_isGoodAddress(_awardOwner)) {
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(283)

[33mWarning[0m for UnhandledException in contract 'PornSceneToken':
    |    
    |    if(_isGoodAddress(_awardOwner)) {
  > |        _awardOwner.transfer(fee);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(286)

[33mWarning[0m for UnhandledException in contract 'PornSceneToken':
    |    for (uint i = 0; i < _stars.length; i++) {
    |        address _pornstarOwner;
  > |        (_pornstarOwner) = pornstarsContract.ownerOf(_stars[i]);
    |        require(_pornstarOwner != address(0) || _pornstarOwner != address(0x0));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(428)

[33mWarning[0m for UnhandledException in contract 'PornSceneToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[33mWarning[0m for UnhandledException in contract 'PornSceneToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornSceneToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornSceneToken':
    |    for (uint i = 0; i < _scene.stars.length; i++) {
    |        address _pornstarOwner;
  > |        (_pornstarOwner) = pornstarsContract.ownerOf(_scene.stars[i]);
    |        
    |        if(_isGoodAddress(_pornstarOwner)) {
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(273)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornSceneToken':
    |  function _payAwardOwner(uint256 fee) private {
    |    address _awardOwner;
  > |    (_awardOwner) = pornstarsContract.ownerOf(currentAwardWinner);
    |    
    |    if(_isGoodAddress(_awardOwner)) {
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornSceneToken':
    |    for (uint i = 0; i < _stars.length; i++) {
    |        address _pornstarOwner;
  > |        (_pornstarOwner) = pornstarsContract.ownerOf(_stars[i]);
    |        require(_pornstarOwner != address(0) || _pornstarOwner != address(0x0));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(428)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornSceneToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(459)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PornSceneToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(461)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    sceneIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |  
    |  function setPornstarsContractAddress(address _address) public onlyCOO {
  > |      pornstarsContract = PornstarsInterface(_address);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |    }
    |
  > |    promoCreatedCount++;
    |    _createScene(_name, _stars, sceneOwner, _price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      sceneIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 94);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      sceneIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 94);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |    } else {
    |      // third stage
  > |      sceneIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 94);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of scenes is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    sceneIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    sceneIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new scenes _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(470)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |    // When creating new scenes _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete sceneIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'PornSceneToken':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete sceneIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(476)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x51430fbd23a8aef3d82e4240152ba379ff84016b.sol(537)


