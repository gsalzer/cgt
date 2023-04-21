Processing contract: /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol:Etherpixels
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol:usingCanvasBoundaries
Processing contract: /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol:usingOwnership
[33mWarning[0m for DAOConstantGas in contract 'Etherpixels':
    |    if (_amount > this.balance)
    |      _amount = this.balance;
  > |    contract_owner.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(18)

[33mWarning[0m for LockedEther in contract 'Etherpixels':
    |}
    |
  > |contract Etherpixels is usingOwnership, usingCanvasBoundaries {
    |  uint private starting_price = 5000000000000; /* 5000 gwei */
    |
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(55)

[33mWarning[0m for TODAmount in contract 'Etherpixels':
    |    if (_amount > this.balance)
    |      _amount = this.balance;
  > |    contract_owner.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(18)

[31mViolation[0m for TODReceiver in contract 'Etherpixels':
    |    if (_amount > this.balance)
    |      _amount = this.balance;
  > |    contract_owner.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(18)

[31mViolation[0m for UnhandledException in contract 'Etherpixels':
    |        PixelPainted(_index, msg.sender, old_owner, p.price, _color);
    |        if (old_owner != address(0))
  > |          old_owner.send(_paid * 98 / 100); /* not using transfer to avoid old_owner locking pixel by buying it from a contract that reverts when receiving funds */
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(111)

[33mWarning[0m for UnhandledException in contract 'Etherpixels':
    |    if (_amount > this.balance)
    |      _amount = this.balance;
  > |    contract_owner.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(18)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherpixels':
    |        PixelPainted(_index, msg.sender, old_owner, p.price, _color);
    |        if (old_owner != address(0))
  > |          old_owner.send(_paid * 98 / 100); /* not using transfer to avoid old_owner locking pixel by buying it from a contract that reverts when receiving funds */
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(111)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Etherpixels':
    |    if (_amount > this.balance)
    |      _amount = this.balance;
  > |    contract_owner.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherpixels':
    |        if (_paid > current_price * 2)
    |          _paid = current_price * 2;
  > |        p.price = uint96(_paid);
    |        require(p.price == _paid); /* casting guard */ 
    |        address old_owner = p.owner;
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherpixels':
    |        require(p.price == _paid); /* casting guard */ 
    |        address old_owner = p.owner;
  > |        p.owner = msg.sender;
    |        PixelPainted(_index, msg.sender, old_owner, p.price, _color);
    |        if (old_owner != address(0))
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherpixels':
    |  function TransferOwnership(address _new_owner) onlyOwner public {
    |    require(_new_owner != address(0));
  > |    contract_owner = _new_owner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Etherpixels':
    |  function LowerStartingPrice(uint _new_starting_price) onlyOwner public {
    |    require(_new_starting_price < starting_price);
  > |    starting_price = _new_starting_price;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa85924729e6d65fcd23d8c7fcfb7065b709fff30.sol(90)


