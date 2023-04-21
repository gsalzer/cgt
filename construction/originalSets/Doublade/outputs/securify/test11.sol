Processing contract: /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol:CryptoCelebrity
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CryptoCelebrity':
    |
    |  function withdrawAmountTo (uint256 _amount, address _to) public onlyCLevel {
  > |    _to.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(199)

[33mWarning[0m for DAOConstantGas in contract 'CryptoCelebrity':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.10)
    |      ceoAddress.transfer(fee); //0.099
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(238)

[33mWarning[0m for DAOConstantGas in contract 'CryptoCelebrity':
    |    if (oldOwner != address(this)) {
    |      oldOwner.transfer(payment); //(1-0.10)
  > |      ceoAddress.transfer(fee); //0.099
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(239)

[33mWarning[0m for DAOConstantGas in contract 'CryptoCelebrity':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(244)

[33mWarning[0m for DAOConstantGas in contract 'CryptoCelebrity':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(404)

[33mWarning[0m for DAOConstantGas in contract 'CryptoCelebrity':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(406)

[33mWarning[0m for LockedEther in contract 'CryptoCelebrity':
    |}
    |
  > |contract CryptoCelebrity is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(26)

[31mViolation[0m for TODAmount in contract 'CryptoCelebrity':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(404)

[31mViolation[0m for TODAmount in contract 'CryptoCelebrity':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(406)

[33mWarning[0m for TODAmount in contract 'CryptoCelebrity':
    |
    |  function withdrawAmountTo (uint256 _amount, address _to) public onlyCLevel {
  > |    _to.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(199)

[33mWarning[0m for TODAmount in contract 'CryptoCelebrity':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.10)
    |      ceoAddress.transfer(fee); //0.099
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(238)

[33mWarning[0m for TODAmount in contract 'CryptoCelebrity':
    |    if (oldOwner != address(this)) {
    |      oldOwner.transfer(payment); //(1-0.10)
  > |      ceoAddress.transfer(fee); //0.099
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(239)

[33mWarning[0m for TODAmount in contract 'CryptoCelebrity':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(244)

[31mViolation[0m for TODReceiver in contract 'CryptoCelebrity':
    |    if (oldOwner != address(this)) {
    |      oldOwner.transfer(payment); //(1-0.10)
  > |      ceoAddress.transfer(fee); //0.099
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(239)

[31mViolation[0m for TODReceiver in contract 'CryptoCelebrity':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(404)

[33mWarning[0m for TODReceiver in contract 'CryptoCelebrity':
    |
    |  function withdrawAmountTo (uint256 _amount, address _to) public onlyCLevel {
  > |    _to.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(199)

[33mWarning[0m for TODReceiver in contract 'CryptoCelebrity':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.10)
    |      ceoAddress.transfer(fee); //0.099
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(238)

[33mWarning[0m for TODReceiver in contract 'CryptoCelebrity':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(244)

[33mWarning[0m for TODReceiver in contract 'CryptoCelebrity':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(406)

[33mWarning[0m for UnhandledException in contract 'CryptoCelebrity':
    |
    |  function withdrawAmountTo (uint256 _amount, address _to) public onlyCLevel {
  > |    _to.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(199)

[33mWarning[0m for UnhandledException in contract 'CryptoCelebrity':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.10)
    |      ceoAddress.transfer(fee); //0.099
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(238)

[33mWarning[0m for UnhandledException in contract 'CryptoCelebrity':
    |    if (oldOwner != address(this)) {
    |      oldOwner.transfer(payment); //(1-0.10)
  > |      ceoAddress.transfer(fee); //0.099
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(239)

[33mWarning[0m for UnhandledException in contract 'CryptoCelebrity':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(244)

[33mWarning[0m for UnhandledException in contract 'CryptoCelebrity':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(404)

[33mWarning[0m for UnhandledException in contract 'CryptoCelebrity':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(406)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoCelebrity':
    |
    |  function withdrawAmountTo (uint256 _amount, address _to) public onlyCLevel {
  > |    _to.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoCelebrity':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.10)
    |      ceoAddress.transfer(fee); //0.099
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoCelebrity':
    |    if (oldOwner != address(this)) {
    |      oldOwner.transfer(payment); //(1-0.10)
  > |      ceoAddress.transfer(fee); //0.099
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoCelebrity':
    |    TokenSold(_tokenId, sellingPrice, personIndexToPrice[_tokenId], oldOwner, newOwner, persons[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(244)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoCelebrity':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(404)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoCelebrity':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |}
    |
  > |contract CryptoCelebrity is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    personIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    }
    |
  > |    promoCreatedCount++;
    |    _createPerson(_name, personOwner, _price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      personIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 94);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      personIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 94);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    } else {
    |      // third stage
  > |      personIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 94);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    require (minPrice < newPrice && newPrice < maxPrice);
    |    // Update prices
  > |    personIndexToPrice[_tokenId] = newPrice;
    |    PriceChange(_tokenId, oldPrice, newPrice, persons[_tokenId].name);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of persons is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    personIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(413)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    personIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new persons _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(415)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |    // When creating new persons _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete personIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoCelebrity':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete personIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(421)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0082f8addb9c0d6cc27783d41198300b4cd2e19b.sol(428)


