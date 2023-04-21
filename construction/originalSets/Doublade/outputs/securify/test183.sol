Processing contract: /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol:EtherMeals
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EtherMeals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(210)

[33mWarning[0m for DAOConstantGas in contract 'EtherMeals':
    |    TokenSold(_tokenId, sellingPrice, mealIndexToPrice[_tokenId], oldOwner, newOwner, meals[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(215)

[33mWarning[0m for DAOConstantGas in contract 'EtherMeals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(361)

[33mWarning[0m for DAOConstantGas in contract 'EtherMeals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(363)

[33mWarning[0m for LockedEther in contract 'EtherMeals':
    |}
    |
  > |contract EtherMeals is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(26)

[31mViolation[0m for TODAmount in contract 'EtherMeals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(361)

[31mViolation[0m for TODAmount in contract 'EtherMeals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(363)

[33mWarning[0m for TODAmount in contract 'EtherMeals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(210)

[33mWarning[0m for TODAmount in contract 'EtherMeals':
    |    TokenSold(_tokenId, sellingPrice, mealIndexToPrice[_tokenId], oldOwner, newOwner, meals[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(215)

[31mViolation[0m for TODReceiver in contract 'EtherMeals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(361)

[33mWarning[0m for TODReceiver in contract 'EtherMeals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(210)

[33mWarning[0m for TODReceiver in contract 'EtherMeals':
    |    TokenSold(_tokenId, sellingPrice, mealIndexToPrice[_tokenId], oldOwner, newOwner, meals[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(215)

[33mWarning[0m for TODReceiver in contract 'EtherMeals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(363)

[33mWarning[0m for UnhandledException in contract 'EtherMeals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(210)

[33mWarning[0m for UnhandledException in contract 'EtherMeals':
    |    TokenSold(_tokenId, sellingPrice, mealIndexToPrice[_tokenId], oldOwner, newOwner, meals[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(215)

[33mWarning[0m for UnhandledException in contract 'EtherMeals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(361)

[33mWarning[0m for UnhandledException in contract 'EtherMeals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(363)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherMeals':
    |    // Pay previous tokenOwner if owner is not contract
    |    if (oldOwner != address(this)) {
  > |      oldOwner.transfer(payment); //(1-0.08)
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherMeals':
    |    TokenSold(_tokenId, sellingPrice, mealIndexToPrice[_tokenId], oldOwner, newOwner, meals[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherMeals':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(361)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherMeals':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |}
    |
  > |contract EtherMeals is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    mealIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      mealIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 90);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      mealIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 90);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |    } else {
    |      // third stage
  > |      mealIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 90);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |    require(_newCOO != address(0));
    |
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of meals is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    mealIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    mealIndexToOwner[_tokenId] = _to;
    |
    |    // When creating new meals _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |    // When creating new meals _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete mealIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherMeals':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete mealIndexToApproved[_tokenId];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(378)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x0c495b4716462d89c564ba79e7de477b543e0e30.sol(385)


