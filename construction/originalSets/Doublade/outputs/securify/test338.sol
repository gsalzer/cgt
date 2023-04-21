Processing contract: /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol:DBank
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'DBank':
    |            // send calculated amount of ether directly to sender (aka YOU)
    |            if (amount <= dbk_){
  > |                _addr.transfer(amount);
    |                dbk_ -= amount;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(104)

[31mViolation[0m for DAOConstantGas in contract 'DBank':
    |        uint256 _eth = deposit_[msg.sender];
    |        if (_eth > 0) {
  > |            msg.sender.transfer(_eth);
    |            deposit_[msg.sender] = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(215)

[33mWarning[0m for LockedEther in contract 'DBank':
    |// Contracts reviewed and approved by pros!
    |
  > |contract DBank {
    |    uint256 dbk_;   // total investment in DBank
    |    mapping (address => uint256) invested; // address => investment
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(21)

[31mViolation[0m for TODAmount in contract 'DBank':
    |            // send calculated amount of ether directly to sender (aka YOU)
    |            if (amount <= dbk_){
  > |                _addr.transfer(amount);
    |                dbk_ -= amount;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(104)

[33mWarning[0m for TODReceiver in contract 'DBank':
    |            // send calculated amount of ether directly to sender (aka YOU)
    |            if (amount <= dbk_){
  > |                _addr.transfer(amount);
    |                dbk_ -= amount;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(104)

[33mWarning[0m for TODReceiver in contract 'DBank':
    |        uint256 _eth = deposit_[msg.sender];
    |        if (_eth > 0) {
  > |            msg.sender.transfer(_eth);
    |            deposit_[msg.sender] = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(215)

[33mWarning[0m for UnhandledException in contract 'DBank':
    |            // send calculated amount of ether directly to sender (aka YOU)
    |            if (amount <= dbk_){
  > |                _addr.transfer(amount);
    |                dbk_ -= amount;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(104)

[33mWarning[0m for UnhandledException in contract 'DBank':
    |        uint256 _eth = deposit_[msg.sender];
    |        if (_eth > 0) {
  > |            msg.sender.transfer(_eth);
    |            deposit_[msg.sender] = 0;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |
    |        // bonus for user self 10%
  > |        invested[msg.sender] += msg.value / 10;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |            uint256 amount = invested[msg.sender] * r_ / 100 * (block.number - atBlock[msg.sender]) / blocks_;
    |            
  > |            atBlock[msg.sender] = block.number;
    |            invested[msg.sender] += amount;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |            
    |            atBlock[msg.sender] = block.number;
  > |            invested[msg.sender] += amount;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |
    |        // record block number and invested amount (msg.value) of this transaction
  > |        atBlock[_addr] = block.number;
    |        invested[_addr] += _value;
    |        dbk_ += _value;
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |        // record block number and invested amount (msg.value) of this transaction
    |        atBlock[_addr] = block.number;
  > |        invested[_addr] += _value;
    |        dbk_ += _value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |        // if bonus is On and you're a new player, then you'll get bonus
    |        if (bonusOn_ && isNewPlayer) {
  > |            invested[_addr] += bonusAmount_;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |        {
    |            pID_++;
  > |            pIDxAddr_[_addr] = pID_;
    |            plyr_[pID_] = _addr;
    |            
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |        payable
    |    {
  > |        deposit_[msg.sender] += msg.value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |        if (_eth > 0) {
    |            msg.sender.transfer(_eth);
  > |            deposit_[msg.sender] = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |        onlyOwner()
    |    {
  > |        bonusOn_ = _on;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |        onlyOwner()
    |    {
  > |        bonusAmount_ = _amount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |        onlyOwner()
    |    {
  > |        r_ = _r;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'DBank':
    |        onlyOwner()
    |    {
  > |        blocks_ = _blocks;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x16741e64aec0585fb507d6966564b5c2b1aeeb34.sol(182)


