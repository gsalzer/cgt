Processing contract: /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol:LandGrabToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'LandGrabToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(224)

[33mWarning[0m for DAOConstantGas in contract 'LandGrabToken':
    |    TokenSold(_tokenId, sellingPrice, cityIndexToPrice[_tokenId], oldOwner, newOwner, citys[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(229)

[33mWarning[0m for DAOConstantGas in contract 'LandGrabToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(372)

[33mWarning[0m for DAOConstantGas in contract 'LandGrabToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(374)

[33mWarning[0m for LockedEther in contract 'LandGrabToken':
    |}
    |
  > |contract LandGrabToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(20)

[31mViolation[0m for TODAmount in contract 'LandGrabToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(372)

[31mViolation[0m for TODAmount in contract 'LandGrabToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(374)

[33mWarning[0m for TODAmount in contract 'LandGrabToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(224)

[33mWarning[0m for TODAmount in contract 'LandGrabToken':
    |    TokenSold(_tokenId, sellingPrice, cityIndexToPrice[_tokenId], oldOwner, newOwner, citys[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(229)

[31mViolation[0m for TODReceiver in contract 'LandGrabToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(372)

[33mWarning[0m for TODReceiver in contract 'LandGrabToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(224)

[33mWarning[0m for TODReceiver in contract 'LandGrabToken':
    |    TokenSold(_tokenId, sellingPrice, cityIndexToPrice[_tokenId], oldOwner, newOwner, citys[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(229)

[33mWarning[0m for TODReceiver in contract 'LandGrabToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(374)

[33mWarning[0m for UnhandledException in contract 'LandGrabToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(224)

[33mWarning[0m for UnhandledException in contract 'LandGrabToken':
    |    TokenSold(_tokenId, sellingPrice, cityIndexToPrice[_tokenId], oldOwner, newOwner, citys[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(229)

[33mWarning[0m for UnhandledException in contract 'LandGrabToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(372)

[33mWarning[0m for UnhandledException in contract 'LandGrabToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(374)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LandGrabToken':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LandGrabToken':
    |    TokenSold(_tokenId, sellingPrice, cityIndexToPrice[_tokenId], oldOwner, newOwner, citys[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LandGrabToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(372)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LandGrabToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
  > |pragma solidity ^0.4.19; // solhint-disable-line
    |
    |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |}
    |
  > |contract LandGrabToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    cityIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |    }
    |
  > |    promoCreatedCount++;
    |    _createCity(_name, cityOwner, _price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      cityIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 94);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      cityIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 94);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |    } else {
    |      // third stage
  > |      cityIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 94);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of citys is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    cityIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    cityIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new citys _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |    // When creating new citys _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete cityIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'LandGrabToken':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete cityIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(389)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x52629dd14923d9f60deafdd373ff6e1145866f09.sol(396)


