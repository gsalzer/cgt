Processing contract: /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol:RegionsToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'RegionsToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(233)

[33mWarning[0m for DAOConstantGas in contract 'RegionsToken':
    |    TokenSold(_tokenId, sellingPrice, regionIndexToPrice[_tokenId], oldOwner, newOwner, regions[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(238)

[33mWarning[0m for DAOConstantGas in contract 'RegionsToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(384)

[33mWarning[0m for DAOConstantGas in contract 'RegionsToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(386)

[33mWarning[0m for LockedEther in contract 'RegionsToken':
    |
    |
  > |contract RegionsToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(29)

[31mViolation[0m for TODAmount in contract 'RegionsToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(384)

[31mViolation[0m for TODAmount in contract 'RegionsToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(386)

[33mWarning[0m for TODAmount in contract 'RegionsToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(233)

[33mWarning[0m for TODAmount in contract 'RegionsToken':
    |    TokenSold(_tokenId, sellingPrice, regionIndexToPrice[_tokenId], oldOwner, newOwner, regions[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(238)

[31mViolation[0m for TODReceiver in contract 'RegionsToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(384)

[33mWarning[0m for TODReceiver in contract 'RegionsToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(233)

[33mWarning[0m for TODReceiver in contract 'RegionsToken':
    |    TokenSold(_tokenId, sellingPrice, regionIndexToPrice[_tokenId], oldOwner, newOwner, regions[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(238)

[33mWarning[0m for TODReceiver in contract 'RegionsToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(386)

[33mWarning[0m for UnhandledException in contract 'RegionsToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(233)

[33mWarning[0m for UnhandledException in contract 'RegionsToken':
    |    TokenSold(_tokenId, sellingPrice, regionIndexToPrice[_tokenId], oldOwner, newOwner, regions[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(238)

[33mWarning[0m for UnhandledException in contract 'RegionsToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(384)

[33mWarning[0m for UnhandledException in contract 'RegionsToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(386)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegionsToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.06)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(233)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegionsToken':
    |    TokenSold(_tokenId, sellingPrice, regionIndexToPrice[_tokenId], oldOwner, newOwner, regions[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegionsToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RegionsToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |
    |
  > |contract RegionsToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    regionIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |    }
    |
  > |    promoCreatedCount++;
    |    _createRegion(_name, regionOwner, _price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      regionIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 94);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      regionIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 94);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |    } else {
    |      // third stage
  > |      regionIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 94);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of regions is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    regionIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    regionIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new regions _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |    // When creating new regions _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete regionIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'RegionsToken':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete regionIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(401)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7d7e8519c4c8841a7953d955ec705f636a40c7ee.sol(408)


