Processing contract: /home/jiaming/mavs_srcs/contract@0xac935d89f390c700e69230b369cb83e7eb0ea3d2.sol:LifetimeLottery
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LifetimeLottery':
    |*/
    | 
  > |contract LifetimeLottery {
    |   
    |    uint internal constant MIN_SEND_VAL = 5000000000000000; //minimum amount (in wei) for getting registered on list (0.005 ETH)
  at /home/jiaming/mavs_srcs/contract@0xac935d89f390c700e69230b369cb83e7eb0ea3d2.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'LifetimeLottery':
    |    }
    |   
  > |    function amountOfRegisters() public constant returns(uint) {
    |        return lotteryList.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac935d89f390c700e69230b369cb83e7eb0ea3d2.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'LifetimeLottery':
    |    }
    |   
  > |    function currentJackpotInWei() public constant returns(uint) {
    |        return jackpot;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac935d89f390c700e69230b369cb83e7eb0ea3d2.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'LifetimeLottery':
    |    }
    |   
  > |    function ourLastWinner() public constant returns(address) {
    |        return lastWinner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac935d89f390c700e69230b369cb83e7eb0ea3d2.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'LifetimeLottery':
    |    }
    |   
  > |    function ourLastJackpotWinner() public constant returns(address) {
    |        return lastJackpotWinner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac935d89f390c700e69230b369cb83e7eb0ea3d2.sol(80)


