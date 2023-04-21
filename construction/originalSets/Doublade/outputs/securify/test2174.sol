Processing contract: /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol:EthereumLottery
Processing contract: /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol:LotteryAdmin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'LotteryAdmin':
    |                         uint _ticketPrice, int _durationInBlocks)
    |             onlyAdminOrOwner {
  > |        EthereumLottery(ethereumLottery).initLottery.value(_jackpot)(
    |            _jackpot, _numTickets, _ticketPrice, _durationInBlocks);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(56)

[33mWarning[0m for DAOConstantGas in contract 'LotteryAdmin':
    |
    |    function withdraw(uint _value) onlyOwner {
  > |        owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(61)

[33mWarning[0m for LockedEther in contract 'LotteryAdmin':
    |}
    |
  > |contract LotteryAdmin {
    |    address public owner;
    |    address public admin;
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(12)

[33mWarning[0m for TODAmount in contract 'LotteryAdmin':
    |                         uint _ticketPrice, int _durationInBlocks)
    |             onlyAdminOrOwner {
  > |        EthereumLottery(ethereumLottery).initLottery.value(_jackpot)(
    |            _jackpot, _numTickets, _ticketPrice, _durationInBlocks);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(56)

[33mWarning[0m for TODAmount in contract 'LotteryAdmin':
    |
    |    function withdraw(uint _value) onlyOwner {
  > |        owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(61)

[31mViolation[0m for TODReceiver in contract 'LotteryAdmin':
    |                         uint _ticketPrice, int _durationInBlocks)
    |             onlyAdminOrOwner {
  > |        EthereumLottery(ethereumLottery).initLottery.value(_jackpot)(
    |            _jackpot, _numTickets, _ticketPrice, _durationInBlocks);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(56)

[31mViolation[0m for TODReceiver in contract 'LotteryAdmin':
    |
    |    function withdraw(uint _value) onlyOwner {
  > |        owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(61)

[33mWarning[0m for UnhandledException in contract 'LotteryAdmin':
    |
    |    function needsAdministration() constant returns (bool) {
  > |        if (EthereumLottery(ethereumLottery).admin() != address(this)) {
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(42)

[33mWarning[0m for UnhandledException in contract 'LotteryAdmin':
    |        }
    |
  > |        return EthereumLottery(ethereumLottery).needsFinalization();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(46)

[33mWarning[0m for UnhandledException in contract 'LotteryAdmin':
    |
    |    function administrate(uint _steps) {
  > |        EthereumLottery(ethereumLottery).finalizeLottery(_steps);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(50)

[33mWarning[0m for UnhandledException in contract 'LotteryAdmin':
    |                         uint _ticketPrice, int _durationInBlocks)
    |             onlyAdminOrOwner {
  > |        EthereumLottery(ethereumLottery).initLottery.value(_jackpot)(
    |            _jackpot, _numTickets, _ticketPrice, _durationInBlocks);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(56)

[33mWarning[0m for UnhandledException in contract 'LotteryAdmin':
    |
    |    function withdraw(uint _value) onlyOwner {
  > |        owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(61)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryAdmin':
    |
    |    function needsAdministration() constant returns (bool) {
  > |        if (EthereumLottery(ethereumLottery).admin() != address(this)) {
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryAdmin':
    |        }
    |
  > |        return EthereumLottery(ethereumLottery).needsFinalization();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(46)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryAdmin':
    |
    |    function administrate(uint _steps) {
  > |        EthereumLottery(ethereumLottery).finalizeLottery(_steps);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(50)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryAdmin':
    |                         uint _ticketPrice, int _durationInBlocks)
    |             onlyAdminOrOwner {
  > |        EthereumLottery(ethereumLottery).initLottery.value(_jackpot)(
    |            _jackpot, _numTickets, _ticketPrice, _durationInBlocks);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(56)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LotteryAdmin':
    |
    |    function withdraw(uint _value) onlyOwner {
  > |        owner.transfer(_value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryAdmin':
    |
    |    function setLottery(address _ethereumLottery) onlyOwner {
  > |        ethereumLottery = _ethereumLottery;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryAdmin':
    |
    |    function setAdmin(address _admin) onlyOwner {
  > |        admin = _admin;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryAdmin':
    |
    |    function proposeOwner(address _owner) onlyOwner {
  > |        proposedOwner = _owner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'LotteryAdmin':
    |        require(proposedOwner != 0);
    |        require(msg.sender == proposedOwner);
  > |        owner = proposedOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8dc46946d5e56a780ee21ee6029af675a46e39bf.sol(79)


