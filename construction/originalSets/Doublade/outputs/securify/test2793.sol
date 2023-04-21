Processing contract: /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol:OSSCardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'OSSCardToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(207)

[33mWarning[0m for DAOConstantGas in contract 'OSSCardToken':
    |    TokenSold(_tokenId, sellingPrice, cardIndexToPrice[_tokenId], oldOwner, newOwner, cards[_tokenId].slug);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(212)

[33mWarning[0m for DAOConstantGas in contract 'OSSCardToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(362)

[33mWarning[0m for DAOConstantGas in contract 'OSSCardToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(364)

[33mWarning[0m for LockedEther in contract 'OSSCardToken':
    |}
    |
  > |contract OSSCardToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(20)

[31mViolation[0m for TODAmount in contract 'OSSCardToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(362)

[31mViolation[0m for TODAmount in contract 'OSSCardToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(364)

[33mWarning[0m for TODAmount in contract 'OSSCardToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(207)

[33mWarning[0m for TODAmount in contract 'OSSCardToken':
    |    TokenSold(_tokenId, sellingPrice, cardIndexToPrice[_tokenId], oldOwner, newOwner, cards[_tokenId].slug);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(212)

[31mViolation[0m for TODReceiver in contract 'OSSCardToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(362)

[33mWarning[0m for TODReceiver in contract 'OSSCardToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(207)

[33mWarning[0m for TODReceiver in contract 'OSSCardToken':
    |    TokenSold(_tokenId, sellingPrice, cardIndexToPrice[_tokenId], oldOwner, newOwner, cards[_tokenId].slug);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(212)

[33mWarning[0m for TODReceiver in contract 'OSSCardToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(364)

[33mWarning[0m for UnhandledException in contract 'OSSCardToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(207)

[33mWarning[0m for UnhandledException in contract 'OSSCardToken':
    |    TokenSold(_tokenId, sellingPrice, cardIndexToPrice[_tokenId], oldOwner, newOwner, cards[_tokenId].slug);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(212)

[33mWarning[0m for UnhandledException in contract 'OSSCardToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(362)

[33mWarning[0m for UnhandledException in contract 'OSSCardToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(364)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OSSCardToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OSSCardToken':
    |    TokenSold(_tokenId, sellingPrice, cardIndexToPrice[_tokenId], oldOwner, newOwner, cards[_tokenId].slug);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OSSCardToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OSSCardToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    cardIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      cardIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 92);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      cardIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 92);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |    } else {
    |      // third stage
  > |      cardIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 92);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of cards is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    cardIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    cardIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new cards _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |    // When creating new cards _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete cardIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'OSSCardToken':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete cardIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(379)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xb7321c1dae3931abf91f8f5d68e3aaa42f526acb.sol(386)


