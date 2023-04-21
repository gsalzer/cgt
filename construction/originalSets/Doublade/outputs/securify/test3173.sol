Processing contract: /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol:EmojiToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EmojiToken':
    |    if (previousOwners[6] != address(this) && payoutTotal > 0) {
    |      // divide by 1000 since percentage is 0.5
  > |      previousOwners[6].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 5), 1000)));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(309)

[33mWarning[0m for DAOConstantGas in contract 'EmojiToken':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(314)

[33mWarning[0m for DAOConstantGas in contract 'EmojiToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(460)

[33mWarning[0m for DAOConstantGas in contract 'EmojiToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(462)

[33mWarning[0m for LockedEther in contract 'EmojiToken':
    |
    |/// Modified from the CryptoCelebrities contract
  > |contract EmojiToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(29)

[31mViolation[0m for TODAmount in contract 'EmojiToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(460)

[31mViolation[0m for TODAmount in contract 'EmojiToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(462)

[33mWarning[0m for TODAmount in contract 'EmojiToken':
    |    if (oldOwner != address(this) && previousPrice > 0) {
    |      // old owner gets entire initial payment back
  > |      oldOwner.transfer(previousPrice);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(282)

[33mWarning[0m for TODAmount in contract 'EmojiToken':
    |    // Split is: 75, 12, 6, 3, 2, 1.5, 0.5
    |    if (previousOwners[0] != address(this) && payoutTotal > 0) {
  > |      previousOwners[0].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 75), 100)));
    |    }
    |    if (previousOwners[1] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(289)

[33mWarning[0m for TODAmount in contract 'EmojiToken':
    |    }
    |    if (previousOwners[1] != address(this) && payoutTotal > 0) {
  > |      previousOwners[1].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 12), 100)));
    |    }
    |    if (previousOwners[2] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(292)

[33mWarning[0m for TODAmount in contract 'EmojiToken':
    |    }
    |    if (previousOwners[2] != address(this) && payoutTotal > 0) {
  > |      previousOwners[2].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 6), 100)));
    |    }
    |    if (previousOwners[3] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(295)

[33mWarning[0m for TODAmount in contract 'EmojiToken':
    |    }
    |    if (previousOwners[3] != address(this) && payoutTotal > 0) {
  > |      previousOwners[3].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 3), 100)));
    |    }
    |    if (previousOwners[4] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(298)

[33mWarning[0m for TODAmount in contract 'EmojiToken':
    |    }
    |    if (previousOwners[4] != address(this) && payoutTotal > 0) {
  > |      previousOwners[4].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 2), 100)));
    |    }
    |    if (previousOwners[5] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(301)

[33mWarning[0m for TODAmount in contract 'EmojiToken':
    |    if (previousOwners[5] != address(this) && payoutTotal > 0) {
    |      // divide by 1000 since percentage is 1.5
  > |      previousOwners[5].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 15), 1000)));
    |    }
    |    if (previousOwners[6] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(305)

[33mWarning[0m for TODAmount in contract 'EmojiToken':
    |    if (previousOwners[6] != address(this) && payoutTotal > 0) {
    |      // divide by 1000 since percentage is 0.5
  > |      previousOwners[6].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 5), 1000)));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(309)

[33mWarning[0m for TODAmount in contract 'EmojiToken':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(314)

[31mViolation[0m for TODReceiver in contract 'EmojiToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(460)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |    if (oldOwner != address(this) && previousPrice > 0) {
    |      // old owner gets entire initial payment back
  > |      oldOwner.transfer(previousPrice);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(282)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |    // Split is: 75, 12, 6, 3, 2, 1.5, 0.5
    |    if (previousOwners[0] != address(this) && payoutTotal > 0) {
  > |      previousOwners[0].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 75), 100)));
    |    }
    |    if (previousOwners[1] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(289)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |    }
    |    if (previousOwners[1] != address(this) && payoutTotal > 0) {
  > |      previousOwners[1].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 12), 100)));
    |    }
    |    if (previousOwners[2] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(292)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |    }
    |    if (previousOwners[2] != address(this) && payoutTotal > 0) {
  > |      previousOwners[2].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 6), 100)));
    |    }
    |    if (previousOwners[3] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(295)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |    }
    |    if (previousOwners[3] != address(this) && payoutTotal > 0) {
  > |      previousOwners[3].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 3), 100)));
    |    }
    |    if (previousOwners[4] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(298)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |    }
    |    if (previousOwners[4] != address(this) && payoutTotal > 0) {
  > |      previousOwners[4].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 2), 100)));
    |    }
    |    if (previousOwners[5] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(301)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |    if (previousOwners[5] != address(this) && payoutTotal > 0) {
    |      // divide by 1000 since percentage is 1.5
  > |      previousOwners[5].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 15), 1000)));
    |    }
    |    if (previousOwners[6] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(305)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |    if (previousOwners[6] != address(this) && payoutTotal > 0) {
    |      // divide by 1000 since percentage is 0.5
  > |      previousOwners[6].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 5), 1000)));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(309)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(314)

[33mWarning[0m for TODReceiver in contract 'EmojiToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(462)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |    if (oldOwner != address(this) && previousPrice > 0) {
    |      // old owner gets entire initial payment back
  > |      oldOwner.transfer(previousPrice);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(282)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |    // Split is: 75, 12, 6, 3, 2, 1.5, 0.5
    |    if (previousOwners[0] != address(this) && payoutTotal > 0) {
  > |      previousOwners[0].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 75), 100)));
    |    }
    |    if (previousOwners[1] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(289)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |    }
    |    if (previousOwners[1] != address(this) && payoutTotal > 0) {
  > |      previousOwners[1].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 12), 100)));
    |    }
    |    if (previousOwners[2] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(292)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |    }
    |    if (previousOwners[2] != address(this) && payoutTotal > 0) {
  > |      previousOwners[2].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 6), 100)));
    |    }
    |    if (previousOwners[3] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(295)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |    }
    |    if (previousOwners[3] != address(this) && payoutTotal > 0) {
  > |      previousOwners[3].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 3), 100)));
    |    }
    |    if (previousOwners[4] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(298)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |    }
    |    if (previousOwners[4] != address(this) && payoutTotal > 0) {
  > |      previousOwners[4].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 2), 100)));
    |    }
    |    if (previousOwners[5] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(301)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |    if (previousOwners[5] != address(this) && payoutTotal > 0) {
    |      // divide by 1000 since percentage is 1.5
  > |      previousOwners[5].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 15), 1000)));
    |    }
    |    if (previousOwners[6] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(305)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |    if (previousOwners[6] != address(this) && payoutTotal > 0) {
    |      // divide by 1000 since percentage is 0.5
  > |      previousOwners[6].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 5), 1000)));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(309)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(314)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(460)

[33mWarning[0m for UnhandledException in contract 'EmojiToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(462)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |    if (oldOwner != address(this) && previousPrice > 0) {
    |      // old owner gets entire initial payment back
  > |      oldOwner.transfer(previousPrice);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |    // Split is: 75, 12, 6, 3, 2, 1.5, 0.5
    |    if (previousOwners[0] != address(this) && payoutTotal > 0) {
  > |      previousOwners[0].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 75), 100)));
    |    }
    |    if (previousOwners[1] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |    }
    |    if (previousOwners[1] != address(this) && payoutTotal > 0) {
  > |      previousOwners[1].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 12), 100)));
    |    }
    |    if (previousOwners[2] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |    }
    |    if (previousOwners[2] != address(this) && payoutTotal > 0) {
  > |      previousOwners[2].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 6), 100)));
    |    }
    |    if (previousOwners[3] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(295)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |    }
    |    if (previousOwners[3] != address(this) && payoutTotal > 0) {
  > |      previousOwners[3].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 3), 100)));
    |    }
    |    if (previousOwners[4] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(298)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |    }
    |    if (previousOwners[4] != address(this) && payoutTotal > 0) {
  > |      previousOwners[4].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 2), 100)));
    |    }
    |    if (previousOwners[5] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |    if (previousOwners[5] != address(this) && payoutTotal > 0) {
    |      // divide by 1000 since percentage is 1.5
  > |      previousOwners[5].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 15), 1000)));
    |    }
    |    if (previousOwners[6] != address(this) && payoutTotal > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |    if (previousOwners[6] != address(this) && payoutTotal > 0) {
    |      // divide by 1000 since percentage is 0.5
  > |      previousOwners[6].transfer(uint256(SafeMath.div(SafeMath.mul(payoutTotal, 5), 1000)));
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(309)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |    TokenSold(_tokenId, sellingPrice, emojiIndexToPrice[_tokenId], oldOwner, newOwner, emojis[_tokenId].name);
    |
  > |    msg.sender.transfer(purchaseExcess);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |  function _payout(address _to) private {
    |    if (_to == address(0)) {
  > |      ceoAddress.transfer(this.balance);
    |    } else {
    |      _to.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(460)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmojiToken':
    |      ceoAddress.transfer(this.balance);
    |    } else {
  > |      _to.transfer(this.balance);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
  > |pragma solidity ^0.4.18; // solhint-disable-line
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |
    |/// Modified from the CryptoCelebrities contract
  > |contract EmojiToken is ERC721 {
    |
    |  /*** EVENTS ***/
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    require(_owns(msg.sender, _tokenId));
    |
  > |    emojiIndexToApproved[_tokenId] = _to;
    |
    |    Approval(msg.sender, _to, _tokenId);
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    }
    |
  > |    promoCreatedCount++;
    |    _createEmoji(_name, emojiOwner, _price);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |  // be redeployed
    |  function setPreviousPrice(uint256 _tokenId, uint256 _previousPrice) public onlyCOO {
  > |    emojiIndexToPreviousPrice[_tokenId] = _previousPrice;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    uint256 purchaseExcess = SafeMath.sub(msg.value, sellingPrice);
    |    // Update previous price
  > |    emojiIndexToPreviousPrice[_tokenId] = sellingPrice; 
    |    // Update prices
    |    if (sellingPrice < firstStepLimit) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    if (sellingPrice < firstStepLimit) {
    |      // first stage
  > |      emojiIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 200), 90);
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    } else if (sellingPrice < secondStepLimit) {
    |      // second stage
  > |      emojiIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 120), 90);
    |    } else {
    |      // third stage
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    } else {
    |      // third stage
  > |      emojiIndexToPrice[_tokenId] = SafeMath.div(SafeMath.mul(sellingPrice, 115), 90);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    require(_newCEO != address(0));
    |
  > |    ceoAddress = _newCEO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |  function setCOO(address _newCOO) public onlyCEO {
    |    require(_newCOO != address(0));
  > |    cooAddress = _newCOO;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |  function _transfer(address _from, address _to, uint256 _tokenId) private {
    |    // Since the number of emojis is capped to 2^32 we can't overflow this
  > |    ownershipTokenCount[_to]++;
    |    //transfer ownership
    |    emojiIndexToOwner[_tokenId] = _to;
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    ownershipTokenCount[_to]++;
    |    //transfer ownership
  > |    emojiIndexToOwner[_tokenId] = _to;
    |    // When creating new emojis _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    // When creating new emojis _from is 0x0, but we can't account that address.
    |    if (_from != address(0)) {
  > |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
    |      delete emojiIndexToApproved[_tokenId];
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |      ownershipTokenCount[_from]--;
    |      // clear any previously approved ownership exchange
  > |      delete emojiIndexToApproved[_tokenId];
    |    }
    |    // Update the emojiIndexToPreviousOwners
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    }
    |    // Update the emojiIndexToPreviousOwners
  > |    emojiIndexToPreviousOwners[_tokenId][6]=emojiIndexToPreviousOwners[_tokenId][5];
    |    emojiIndexToPreviousOwners[_tokenId][5]=emojiIndexToPreviousOwners[_tokenId][4];
    |    emojiIndexToPreviousOwners[_tokenId][4]=emojiIndexToPreviousOwners[_tokenId][3];
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    // Update the emojiIndexToPreviousOwners
    |    emojiIndexToPreviousOwners[_tokenId][6]=emojiIndexToPreviousOwners[_tokenId][5];
  > |    emojiIndexToPreviousOwners[_tokenId][5]=emojiIndexToPreviousOwners[_tokenId][4];
    |    emojiIndexToPreviousOwners[_tokenId][4]=emojiIndexToPreviousOwners[_tokenId][3];
    |    emojiIndexToPreviousOwners[_tokenId][3]=emojiIndexToPreviousOwners[_tokenId][2];
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    emojiIndexToPreviousOwners[_tokenId][6]=emojiIndexToPreviousOwners[_tokenId][5];
    |    emojiIndexToPreviousOwners[_tokenId][5]=emojiIndexToPreviousOwners[_tokenId][4];
  > |    emojiIndexToPreviousOwners[_tokenId][4]=emojiIndexToPreviousOwners[_tokenId][3];
    |    emojiIndexToPreviousOwners[_tokenId][3]=emojiIndexToPreviousOwners[_tokenId][2];
    |    emojiIndexToPreviousOwners[_tokenId][2]=emojiIndexToPreviousOwners[_tokenId][1];
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(481)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    emojiIndexToPreviousOwners[_tokenId][5]=emojiIndexToPreviousOwners[_tokenId][4];
    |    emojiIndexToPreviousOwners[_tokenId][4]=emojiIndexToPreviousOwners[_tokenId][3];
  > |    emojiIndexToPreviousOwners[_tokenId][3]=emojiIndexToPreviousOwners[_tokenId][2];
    |    emojiIndexToPreviousOwners[_tokenId][2]=emojiIndexToPreviousOwners[_tokenId][1];
    |    emojiIndexToPreviousOwners[_tokenId][1]=emojiIndexToPreviousOwners[_tokenId][0];
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    emojiIndexToPreviousOwners[_tokenId][4]=emojiIndexToPreviousOwners[_tokenId][3];
    |    emojiIndexToPreviousOwners[_tokenId][3]=emojiIndexToPreviousOwners[_tokenId][2];
  > |    emojiIndexToPreviousOwners[_tokenId][2]=emojiIndexToPreviousOwners[_tokenId][1];
    |    emojiIndexToPreviousOwners[_tokenId][1]=emojiIndexToPreviousOwners[_tokenId][0];
    |    // the _from address for creation is 0, so instead set it to the contract address
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    emojiIndexToPreviousOwners[_tokenId][3]=emojiIndexToPreviousOwners[_tokenId][2];
    |    emojiIndexToPreviousOwners[_tokenId][2]=emojiIndexToPreviousOwners[_tokenId][1];
  > |    emojiIndexToPreviousOwners[_tokenId][1]=emojiIndexToPreviousOwners[_tokenId][0];
    |    // the _from address for creation is 0, so instead set it to the contract address
    |    if (_from != address(0)) {
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |    // the _from address for creation is 0, so instead set it to the contract address
    |    if (_from != address(0)) {
  > |        emojiIndexToPreviousOwners[_tokenId][0]=_from;
    |    } else {
    |        emojiIndexToPreviousOwners[_tokenId][0]=address(this);
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(487)

[33mWarning[0m for UnrestrictedWrite in contract 'EmojiToken':
    |        emojiIndexToPreviousOwners[_tokenId][0]=_from;
    |    } else {
  > |        emojiIndexToPreviousOwners[_tokenId][0]=address(this);
    |    }
    |    // Emit the transfer event.
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(489)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  }
    |}
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd030e4b885532144aa3c9c10efeb283e51a4a3ee.sol(495)


