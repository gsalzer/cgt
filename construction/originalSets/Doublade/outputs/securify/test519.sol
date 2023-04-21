Processing contract: /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol:etherEmojis
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(385)

[33mWarning[0m for DAOConstantGas in contract 'etherEmojis':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(210)

[33mWarning[0m for DAOConstantGas in contract 'etherEmojis':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(215)

[33mWarning[0m for DAOConstantGas in contract 'etherEmojis':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(361)

[33mWarning[0m for DAOConstantGas in contract 'etherEmojis':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(363)

[33mWarning[0m for LockedEther in contract 'etherEmojis':
    |}
    |
  > |contract etherEmojis is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(26)

[31mViolation[0m for TODAmount in contract 'etherEmojis':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(361)

[31mViolation[0m for TODAmount in contract 'etherEmojis':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(363)

[33mWarning[0m for TODAmount in contract 'etherEmojis':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(210)

[33mWarning[0m for TODAmount in contract 'etherEmojis':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(215)

[31mViolation[0m for TODReceiver in contract 'etherEmojis':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(361)

[33mWarning[0m for TODReceiver in contract 'etherEmojis':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(210)

[33mWarning[0m for TODReceiver in contract 'etherEmojis':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(215)

[33mWarning[0m for TODReceiver in contract 'etherEmojis':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(363)

[33mWarning[0m for UnhandledException in contract 'etherEmojis':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(210)

[33mWarning[0m for UnhandledException in contract 'etherEmojis':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(215)

[33mWarning[0m for UnhandledException in contract 'etherEmojis':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(361)

[33mWarning[0m for UnhandledException in contract 'etherEmojis':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(363)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'etherEmojis':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'etherEmojis':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'etherEmojis':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(361)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'etherEmojis':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |}
    |
  > |contract etherEmojis is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    emojiIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      emojiIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 90);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      emojiIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 90);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |    } else {
    |      // third stage
  > |      emojiIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 90);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of emojis is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    emojiIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    emojiIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new emojis _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |    // When creating new emojis _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete emojiIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'etherEmojis':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete emojiIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x21c852fb8e7ff1f9e6f8ba43652fd4d7907c38bc.sol(378)


