Processing contract: /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol:EtherAnimals
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EtherAnimals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(231)

[33mWarning[0m for DAOConstantGas in contract 'EtherAnimals':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(236)

[33mWarning[0m for DAOConstantGas in contract 'EtherAnimals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(382)

[33mWarning[0m for DAOConstantGas in contract 'EtherAnimals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(384)

[33mWarning[0m for LockedEther in contract 'EtherAnimals':
    |}
    |
  > |contract EtherAnimals is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(26)

[31mViolation[0m for TODAmount in contract 'EtherAnimals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(382)

[31mViolation[0m for TODAmount in contract 'EtherAnimals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(384)

[33mWarning[0m for TODAmount in contract 'EtherAnimals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(231)

[33mWarning[0m for TODAmount in contract 'EtherAnimals':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(236)

[31mViolation[0m for TODReceiver in contract 'EtherAnimals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(382)

[33mWarning[0m for TODReceiver in contract 'EtherAnimals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(231)

[33mWarning[0m for TODReceiver in contract 'EtherAnimals':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(236)

[33mWarning[0m for TODReceiver in contract 'EtherAnimals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(384)

[33mWarning[0m for UnhandledException in contract 'EtherAnimals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(231)

[33mWarning[0m for UnhandledException in contract 'EtherAnimals':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(236)

[33mWarning[0m for UnhandledException in contract 'EtherAnimals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(382)

[33mWarning[0m for UnhandledException in contract 'EtherAnimals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherAnimals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherAnimals':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(236)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherAnimals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(382)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherAnimals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |}
    |
  > |contract EtherAnimals is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    gemIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |    }
    |
  > |    promoCreatedCount++;
    |    _createGem(_name, personOwner, _price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      gemIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 92);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      gemIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 92);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |    } else {
    |      // third stage
  > |      gemIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 92);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of gems is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    gemIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(391)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    gemIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new gems _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |    // When creating new gems _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete gemIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherAnimals':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete gemIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(399)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x87360ae69f75e3a8b19c131dc01f4e0d2fc8c6b9.sol(406)


