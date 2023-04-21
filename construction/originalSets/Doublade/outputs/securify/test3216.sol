Processing contract: /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol:EtherGames
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EtherGames':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(210)

[33mWarning[0m for DAOConstantGas in contract 'EtherGames':
    |    TokenSold(_tokenId, sellingPrice, gameIndexToPrice[_tokenId], oldOwner, newOwner, games[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(215)

[33mWarning[0m for DAOConstantGas in contract 'EtherGames':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(361)

[33mWarning[0m for DAOConstantGas in contract 'EtherGames':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(363)

[33mWarning[0m for LockedEther in contract 'EtherGames':
    |}
    |
  > |contract EtherGames is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(26)

[31mViolation[0m for TODAmount in contract 'EtherGames':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(361)

[31mViolation[0m for TODAmount in contract 'EtherGames':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(363)

[33mWarning[0m for TODAmount in contract 'EtherGames':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(210)

[33mWarning[0m for TODAmount in contract 'EtherGames':
    |    TokenSold(_tokenId, sellingPrice, gameIndexToPrice[_tokenId], oldOwner, newOwner, games[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(215)

[31mViolation[0m for TODReceiver in contract 'EtherGames':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(361)

[33mWarning[0m for TODReceiver in contract 'EtherGames':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(210)

[33mWarning[0m for TODReceiver in contract 'EtherGames':
    |    TokenSold(_tokenId, sellingPrice, gameIndexToPrice[_tokenId], oldOwner, newOwner, games[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(215)

[33mWarning[0m for TODReceiver in contract 'EtherGames':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(363)

[33mWarning[0m for UnhandledException in contract 'EtherGames':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(210)

[33mWarning[0m for UnhandledException in contract 'EtherGames':
    |    TokenSold(_tokenId, sellingPrice, gameIndexToPrice[_tokenId], oldOwner, newOwner, games[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(215)

[33mWarning[0m for UnhandledException in contract 'EtherGames':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(361)

[33mWarning[0m for UnhandledException in contract 'EtherGames':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(363)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherGames':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherGames':
    |    TokenSold(_tokenId, sellingPrice, gameIndexToPrice[_tokenId], oldOwner, newOwner, games[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherGames':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(361)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherGames':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |pragma solidity ^0.4.18;
    |
  > |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
    |/// @author Dieter Shirley <dete@axiomzen.co> (https://github.com/dete)
    |contract ERC721 {
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |}
    |
  > |contract EtherGames is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    gameIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      gameIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 90);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      gameIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 90);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |    } else {
    |      // third stage
  > |      gameIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 90);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of games is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    gameIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    gameIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new games _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |    // When creating new games _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete gameIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGames':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete gameIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(378)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd2cbca4449adb54ecddb3a65faf204b5e1790c3e.sol(385)


