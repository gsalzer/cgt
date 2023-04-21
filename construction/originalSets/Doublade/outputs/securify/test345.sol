Processing contract: /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol:EtherNumbers
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EtherNumbers':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(231)

[33mWarning[0m for DAOConstantGas in contract 'EtherNumbers':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(236)

[33mWarning[0m for DAOConstantGas in contract 'EtherNumbers':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(393)

[33mWarning[0m for DAOConstantGas in contract 'EtherNumbers':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(395)

[33mWarning[0m for LockedEther in contract 'EtherNumbers':
    |}
    |
  > |contract EtherNumbers is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(26)

[31mViolation[0m for TODAmount in contract 'EtherNumbers':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(393)

[31mViolation[0m for TODAmount in contract 'EtherNumbers':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(395)

[33mWarning[0m for TODAmount in contract 'EtherNumbers':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(231)

[33mWarning[0m for TODAmount in contract 'EtherNumbers':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(236)

[31mViolation[0m for TODReceiver in contract 'EtherNumbers':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(393)

[33mWarning[0m for TODReceiver in contract 'EtherNumbers':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(231)

[33mWarning[0m for TODReceiver in contract 'EtherNumbers':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(236)

[33mWarning[0m for TODReceiver in contract 'EtherNumbers':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(395)

[33mWarning[0m for UnhandledException in contract 'EtherNumbers':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(231)

[33mWarning[0m for UnhandledException in contract 'EtherNumbers':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(236)

[33mWarning[0m for UnhandledException in contract 'EtherNumbers':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(393)

[33mWarning[0m for UnhandledException in contract 'EtherNumbers':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(395)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherNumbers':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherNumbers':
    |    TokenSold(_tokenId, sellingPrice, gemIndexToPrice[_tokenId], oldOwner, newOwner, gems[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(236)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherNumbers':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(393)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherNumbers':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |}
    |
  > |contract EtherNumbers is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    gemIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    }
    |
  > |    promoCreatedCount++;
    |    _createGem(_name, personOwner, _price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      gemIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 92);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      gemIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 92);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    } else {
    |      // third stage
  > |      gemIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 92);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    uint256 onePercent = SafeMath.div(currentPrice, 100);
    |    uint256 newPrice = SafeMath.mul(onePercent,95);
  > |    gemIndexToPrice[_tokenId] = newPrice;
    |
    |  }
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of gems is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    gemIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    gemIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new gems _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |    // When creating new gems _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete gemIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherNumbers':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete gemIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(410)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x171ad7aa2d6e083ebbbef0e7ada2ef76da4dadb6.sol(417)


