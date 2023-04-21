Processing contract: /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol:CelebrityBreederToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol:CelebrityToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CelebrityBreederToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPriceGen1[_tokenId], oldOwner, newOwner, PersonsGen1[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(672)

[33mWarning[0m for DAOConstantGas in contract 'CelebrityBreederToken':
    |        
    |        
  > |        owneroffather.transfer(_siringprice);
    |       _payout();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(918)

[33mWarning[0m for DAOConstantGas in contract 'CelebrityBreederToken':
    |      
    |  function _payout() private {
  > |    DevAddress.transfer((this.balance/10)*3);
    |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1070)

[33mWarning[0m for DAOConstantGas in contract 'CelebrityBreederToken':
    |  function _payout() private {
    |    DevAddress.transfer((this.balance/10)*3);
  > |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1071)

[33mWarning[0m for DAOConstantGas in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, trainingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Trained(msg.sender, personid, persongeneration);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1130)

[33mWarning[0m for DAOConstantGas in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, beatingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Beaten(msg.sender, personid, persongeneration);    
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1155)

[33mWarning[0m for LockedEther in contract 'CelebrityBreederToken':
    |/// @author Artyom Harutyunyan <artyomharutyunyans@gmail.com>
    |
  > |contract CelebrityBreederToken is ERC721 {
    |  
    |   /// @dev The Birth event is fired whenever a new person comes into existence.
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(452)

[31mViolation[0m for TODAmount in contract 'CelebrityBreederToken':
    |      
    |  function _payout() private {
  > |    DevAddress.transfer((this.balance/10)*3);
    |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1070)

[31mViolation[0m for TODAmount in contract 'CelebrityBreederToken':
    |  function _payout() private {
    |    DevAddress.transfer((this.balance/10)*3);
  > |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1071)

[33mWarning[0m for TODAmount in contract 'CelebrityBreederToken':
    |    if (oldOwner != address(this)) {
    |    //  oldOwner.transfer(payment); //(1-0.06) //old code for holding some percents
  > |    oldOwner.transfer(sellingPrice);
    |    }
    |    blankbreedingdata(_tokenId,true);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(666)

[33mWarning[0m for TODAmount in contract 'CelebrityBreederToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPriceGen1[_tokenId], oldOwner, newOwner, PersonsGen1[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(672)

[33mWarning[0m for TODAmount in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, trainingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Trained(msg.sender, personid, persongeneration);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1130)

[33mWarning[0m for TODAmount in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, beatingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Beaten(msg.sender, personid, persongeneration);    
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1155)

[31mViolation[0m for TODReceiver in contract 'CelebrityBreederToken':
    |      
    |  function _payout() private {
  > |    DevAddress.transfer((this.balance/10)*3);
    |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1070)

[31mViolation[0m for TODReceiver in contract 'CelebrityBreederToken':
    |  function _payout() private {
    |    DevAddress.transfer((this.balance/10)*3);
  > |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1071)

[33mWarning[0m for TODReceiver in contract 'CelebrityBreederToken':
    |    if (oldOwner != address(this)) {
    |    //  oldOwner.transfer(payment); //(1-0.06) //old code for holding some percents
  > |    oldOwner.transfer(sellingPrice);
    |    }
    |    blankbreedingdata(_tokenId,true);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(666)

[33mWarning[0m for TODReceiver in contract 'CelebrityBreederToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPriceGen1[_tokenId], oldOwner, newOwner, PersonsGen1[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(672)

[33mWarning[0m for TODReceiver in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, trainingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Trained(msg.sender, personid, persongeneration);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1130)

[33mWarning[0m for TODReceiver in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, beatingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Beaten(msg.sender, personid, persongeneration);    
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1155)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |  
    |   modifier onlyPlayers() {
  > |    require(ownershipTokenCountGen1[msg.sender]>0 || CelGen0.balanceOf(msg.sender)>0);
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(523)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |      for(uint256 i=fromindex;i<=toindex;i++)
    |      {
  > |          ( name, surname, genes, , ,  , , ,  gender)=CelBetta.getPerson(i,false);
    |         _birthPerson(name, surname ,genes, gender, false);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(540)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |    if (oldOwner != address(this)) {
    |    //  oldOwner.transfer(payment); //(1-0.06) //old code for holding some percents
  > |    oldOwner.transfer(sellingPrice);
    |    }
    |    blankbreedingdata(_tokenId,true);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(666)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPriceGen1[_tokenId], oldOwner, newOwner, PersonsGen1[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(672)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |        person = PersonsGen0[_withpersonid];
    |        _siringprice=personIndexToSiringPrice0[_withpersonid];
  > |        owneroffather=CelGen0.ownerOf(_withpersonid);
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(890)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |        
    |        
  > |        owneroffather.transfer(_siringprice);
    |       _payout();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(918)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |   }
    |   else {
  > |       return ((claimant == CelGen0.personIndexToOwner(_tokenId)) || (claimant==ExternalAllowdContractGen0[_tokenId]));
    |   }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1065)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |      
    |  function _payout() private {
  > |    DevAddress.transfer((this.balance/10)*3);
    |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1070)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |  function _payout() private {
    |    DevAddress.transfer((this.balance/10)*3);
  > |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1071)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, trainingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Trained(msg.sender, personid, persongeneration);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1130)

[33mWarning[0m for UnhandledException in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, beatingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Beaten(msg.sender, personid, persongeneration);    
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |  
    |   modifier onlyPlayers() {
  > |    require(ownershipTokenCountGen1[msg.sender]>0 || CelGen0.balanceOf(msg.sender)>0);
    |    _;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(523)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |      for(uint256 i=fromindex;i<=toindex;i++)
    |      {
  > |          ( name, surname, genes, , ,  , , ,  gender)=CelBetta.getPerson(i,false);
    |         _birthPerson(name, surname ,genes, gender, false);
    |      }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(540)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |    if (oldOwner != address(this)) {
    |    //  oldOwner.transfer(payment); //(1-0.06) //old code for holding some percents
  > |    oldOwner.transfer(sellingPrice);
    |    }
    |    blankbreedingdata(_tokenId,true);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(666)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPriceGen1[_tokenId], oldOwner, newOwner, PersonsGen1[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(672)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |        person = PersonsGen0[_withpersonid];
    |        _siringprice=personIndexToSiringPrice0[_withpersonid];
  > |        owneroffather=CelGen0.ownerOf(_withpersonid);
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(890)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |   }
    |   else {
  > |       return ((claimant == CelGen0.personIndexToOwner(_tokenId)) || (claimant==ExternalAllowdContractGen0[_tokenId]));
    |   }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1065)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |      
    |  function _payout() private {
  > |    DevAddress.transfer((this.balance/10)*3);
    |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1070)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |  function _payout() private {
    |    DevAddress.transfer((this.balance/10)*3);
  > |    CeoAddress.transfer((this.balance/10)*7); 
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1071)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, trainingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Trained(msg.sender, personid, persongeneration);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1130)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityBreederToken':
    |
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, beatingPrice);
  > |    msg.sender.transfer(purchaseExcess);
    |    _payout();
    |    Beaten(msg.sender, personid, persongeneration);    
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1155)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |/// @author Artyom Harutyunyan <artyomharutyunyans@gmail.com>
    |
  > |contract CelebrityBreederToken is ERC721 {
    |  
    |   /// @dev The Birth event is fired whenever a new person comes into existence.
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |  }
    |    function setBreedingFee(uint256 newfee) external onlyCEO{
  > |      breedingFee=newfee;
    |  }
    |  function allowexternalContract(address _to, uint256 _tokenId,bool _tokengeneration) public { 
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(549)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    if(_tokengeneration) {
    |        if(_addressNotNull(_to)) {
  > |            ExternalAllowdContractGen1[_tokenId]=_to;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(557)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |        }
    |        else {
  > |             delete ExternalAllowdContractGen1[_tokenId];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    else {
    |       if(_addressNotNull(_to)) {
  > |            ExternalAllowdContractGen0[_tokenId]=_to;
    |        }
    |        else {
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(565)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |        }
    |        else {
  > |             delete ExternalAllowdContractGen0[_tokenId];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    require(_owns(msg.sender, _tokenId, true));
    |
  > |    personIndexToApprovedGen1[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    require(_addressNotNull(_newCEO));
    |
  > |    CeoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(684)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    require(_owns(msg.sender, _tokenId, true));
    |    if(_price<=0 || _price>=MaxValue) {
  > |        personIndexToPriceGen1[_tokenId]=MaxValue;
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(691)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    }
    |    else {
  > |        personIndexToPriceGen1[_tokenId]=_price;
    |    }
    |    SellingPriceEvent(msg.sender,_tokenId,true,_price);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(694)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    require(_addressNotNull(_newDEV));
    |
  > |    DevAddress = _newDEV;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(702)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |   
    |    
  > |    delete person.readyToBreedWithId;
    |    person.readyToBreedWithGen=false;
    |    
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(844)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    
    |    delete person.readyToBreedWithId;
  > |    person.readyToBreedWithGen=false;
    |    
    |   // uint64 genes2=person.genes;
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(845)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    if(_mypersongeneration==false) {
    |        person = PersonsGen0[_mypersonid];
  > |        personIndexToSiringPrice0[_mypersonid]=_siringprice;
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(930)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |        
    |        require(person.gender==true);//@Artyom for gen1 checking genders to be male
  > |        personIndexToSiringPrice1[_mypersonid]=_siringprice;
    |    }
    |      require(person.genes>90);//@Artyom if its unlocked
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(936)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |      require(person.genes>90);//@Artyom if its unlocked
    |
  > |       person.readyToBreedWithId=uint32(_withpersonid); 
    |       person.readyToBreedWithGen=_withpersongeneration;
    |       SiringPriceEvent(msg.sender,_mypersonid,_mypersongeneration,_siringprice);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(940)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |
    |       person.readyToBreedWithId=uint32(_withpersonid); 
  > |       person.readyToBreedWithGen=_withpersongeneration;
    |       SiringPriceEvent(msg.sender,_mypersonid,_mypersongeneration,_siringprice);
    |      
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(941)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |   function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of persons is capped to 2^32 we can't overflow this
  > |    ownershipTokenCountGen1[_to]++;
    |    //transfer ownership
    |    personIndexToOwnerGen1[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1078)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    ownershipTokenCountGen1[_to]++;
    |    //transfer ownership
  > |    personIndexToOwnerGen1[_tokenId] = _to;
    |
    |    // When creating new persons _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1080)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    // When creating new persons _from is 0x0, but we can't account that address.
    |    if (_addressNotNull(_from)) {
  > |      ownershipTokenCountGen1[_from]--;
    |      // clear any previously approved ownership exchange
    |     blankbreedingdata(_tokenId,true);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1084)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |      if(_persongeneration==false) { 
    |        person = PersonsGen0[_personid];
  > |        delete ExternalAllowdContractGen0[_personid];
    |        delete personIndexToSiringPrice0[_personid];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1096)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |        person = PersonsGen0[_personid];
    |        delete ExternalAllowdContractGen0[_personid];
  > |        delete personIndexToSiringPrice0[_personid];
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1097)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    else {
    |        person = PersonsGen1[_personid];
  > |        delete ExternalAllowdContractGen1[_personid];
    |        delete personIndexToSiringPrice1[_personid];
    |    	delete personIndexToApprovedGen1[_personid];
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1101)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |        person = PersonsGen1[_personid];
    |        delete ExternalAllowdContractGen1[_personid];
  > |        delete personIndexToSiringPrice1[_personid];
    |    	delete personIndexToApprovedGen1[_personid];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1102)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |        delete ExternalAllowdContractGen1[_personid];
    |        delete personIndexToSiringPrice1[_personid];
  > |    	delete personIndexToApprovedGen1[_personid];
    |    }
    |     delete person.readyToBreedWithId;
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1103)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    	delete personIndexToApprovedGen1[_personid];
    |    }
  > |     delete person.readyToBreedWithId;
    |     delete person.readyToBreedWithGen; 
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1105)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityBreederToken':
    |    }
    |     delete person.readyToBreedWithId;
  > |     delete person.readyToBreedWithGen; 
    |  }
    |    function train(uint256 personid, bool persongeneration, uint8 gene) external payable onlyPlayers {
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1106)

[33mWarning[0m for DAOConstantGas in contract 'CelebrityToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(233)

[33mWarning[0m for DAOConstantGas in contract 'CelebrityToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(238)

[33mWarning[0m for DAOConstantGas in contract 'CelebrityToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(384)

[33mWarning[0m for DAOConstantGas in contract 'CelebrityToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(386)

[33mWarning[0m for LockedEther in contract 'CelebrityToken':
    |
    |
  > |contract CelebrityToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(29)

[31mViolation[0m for TODAmount in contract 'CelebrityToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(384)

[31mViolation[0m for TODAmount in contract 'CelebrityToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(386)

[33mWarning[0m for TODAmount in contract 'CelebrityToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(233)

[33mWarning[0m for TODAmount in contract 'CelebrityToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(238)

[31mViolation[0m for TODReceiver in contract 'CelebrityToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(384)

[33mWarning[0m for TODReceiver in contract 'CelebrityToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(233)

[33mWarning[0m for TODReceiver in contract 'CelebrityToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(238)

[33mWarning[0m for TODReceiver in contract 'CelebrityToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(386)

[33mWarning[0m for UnhandledException in contract 'CelebrityToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(233)

[33mWarning[0m for UnhandledException in contract 'CelebrityToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(238)

[33mWarning[0m for UnhandledException in contract 'CelebrityToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(384)

[33mWarning[0m for UnhandledException in contract 'CelebrityToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(386)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(233)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityToken':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CelebrityToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |
    |
  > |contract CelebrityToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    personIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |    }
    |
  > |    promoCreatedCount++;
    |    _createPerson(_name, personOwner, _price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      personIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 94);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      personIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 94);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |    } else {
    |      // third stage
  > |      personIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 94);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of persons is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    personIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    personIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new persons _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |    // When creating new persons _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete personIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'CelebrityToken':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete personIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(401)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa33ab4b0c9905ebc4e0df5eb2f915bee728b8253.sol(408)


