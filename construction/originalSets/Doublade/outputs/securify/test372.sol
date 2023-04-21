Processing contract: /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol:Presale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Presale':
    |    {
    |        // transfer funds to owner if any
  > |        if (!OWNER.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(96)

[31mViolation[0m for DAOConstantGas in contract 'Presale':
    |        balances[msg.sender] = 0;
    |        // send refund back to sender
  > |        if (!msg.sender.send(amount_to_refund)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(124)

[31mViolation[0m for DAOConstantGas in contract 'Presale':
    |          // accept amount only and return change
    |          var change_to_return = total_received_amount + msg.value - MAX_TOTAL_AMOUNT_TO_RECEIVE;
  > |          if (!msg.sender.send(change_to_return)) throw;
    |
    |          var acceptable_remainder = MAX_TOTAL_AMOUNT_TO_RECEIVE - total_received_amount;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(133)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |        balances[msg.sender] = 0;
    |        // send refund back to sender
  > |        if (!msg.sender.send(amount_to_refund)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(124)

[33mWarning[0m for LockedEther in contract 'Presale':
    |/// @title GPS Presale, 100% bonus
    |
  > |contract Presale {
    |
    |    string public constant VERSION = "0.1.5-GP";
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'Presale':
    |
    |    uint public total_received_amount;
  > |    mapping (address => uint) public balances;
    |
    |    uint private constant MIN_TOTAL_AMOUNT_TO_RECEIVE = MIN_TOTAL_AMOUNT_TO_RECEIVE_ETH * 1 ether;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |contract Presale {
    |
  > |    string public constant VERSION = "0.1.5-GP";
    |
    |    /* ====== configuration START ====== */
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |
    |    /* ====== configuration START ====== */
  > |    uint public constant PRESALE_START  = 4262000; /* approx. MON SEP 11 2017 12:17:13 GMT+0200 (CEST) */
    |    uint public constant PRESALE_END    = 4400000; /* approx. TUE OCT 03 2017 05:38:23 GMT+0200 (CEST) */
    |    uint public constant WITHDRAWAL_END = 4780000; /* approx. SUN DEC 03 2017 18:25:10 GMT+0100 (CET)  */
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    /* ====== configuration START ====== */
    |    uint public constant PRESALE_START  = 4262000; /* approx. MON SEP 11 2017 12:17:13 GMT+0200 (CEST) */
  > |    uint public constant PRESALE_END    = 4400000; /* approx. TUE OCT 03 2017 05:38:23 GMT+0200 (CEST) */
    |    uint public constant WITHDRAWAL_END = 4780000; /* approx. SUN DEC 03 2017 18:25:10 GMT+0100 (CET)  */
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    uint public constant PRESALE_START  = 4262000; /* approx. MON SEP 11 2017 12:17:13 GMT+0200 (CEST) */
    |    uint public constant PRESALE_END    = 4400000; /* approx. TUE OCT 03 2017 05:38:23 GMT+0200 (CEST) */
  > |    uint public constant WITHDRAWAL_END = 4780000; /* approx. SUN DEC 03 2017 18:25:10 GMT+0100 (CET)  */
    |
    |    address public constant OWNER = 0xA24AFdBe4A1E8bA8Fa67580186203a60D13083cD;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    uint public constant WITHDRAWAL_END = 4780000; /* approx. SUN DEC 03 2017 18:25:10 GMT+0100 (CET)  */
    |
  > |    address public constant OWNER = 0xA24AFdBe4A1E8bA8Fa67580186203a60D13083cD;
    |
    |    uint public constant MIN_TOTAL_AMOUNT_TO_RECEIVE_ETH = 200;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    address public constant OWNER = 0xA24AFdBe4A1E8bA8Fa67580186203a60D13083cD;
    |
  > |    uint public constant MIN_TOTAL_AMOUNT_TO_RECEIVE_ETH = 200;
    |    uint public constant MAX_TOTAL_AMOUNT_TO_RECEIVE_ETH = 900;
    |    uint public constant MIN_ACCEPTED_AMOUNT_FINNEY = 1;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |
    |    uint public constant MIN_TOTAL_AMOUNT_TO_RECEIVE_ETH = 200;
  > |    uint public constant MAX_TOTAL_AMOUNT_TO_RECEIVE_ETH = 900;
    |    uint public constant MIN_ACCEPTED_AMOUNT_FINNEY = 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    uint public constant MIN_TOTAL_AMOUNT_TO_RECEIVE_ETH = 200;
    |    uint public constant MAX_TOTAL_AMOUNT_TO_RECEIVE_ETH = 900;
  > |    uint public constant MIN_ACCEPTED_AMOUNT_FINNEY = 1;
    |
    |    /* ====== configuration END ====== */
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    enum State { BEFORE_START,  PRESALE_RUNNING, WITHDRAWAL_RUNNING, REFUND_RUNNING, CLOSED }
    |
  > |    uint public total_received_amount;
    |    mapping (address => uint) public balances;
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    uint private constant MAX_TOTAL_AMOUNT_TO_RECEIVE = MAX_TOTAL_AMOUNT_TO_RECEIVE_ETH * 1 ether;
    |    uint private constant MIN_ACCEPTED_AMOUNT = MIN_ACCEPTED_AMOUNT_FINNEY * 1 finney;
  > |    bool public isAborted = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    }
    |
  > |    function refund() external
    |    inState(State.REFUND_RUNNING)
    |    noReentrancy
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |
    |
  > |    function withdrawFunds() external
    |    inState(State.WITHDRAWAL_RUNNING)
    |    onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    }
    |
  > |    function abort() external
    |    inStateBefore(State.REFUND_RUNNING)
    |    onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |
    |    //displays current contract state in human readable form
  > |    function state()  external constant
    |    returns (string)
    |    {
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    //
    |
  > |    function sendRefund() private tokenHoldersOnly {
    |        // load balance to refund plus amount currently sent
    |        var amount_to_refund = balances[msg.sender] + msg.value;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |
    |
  > |    function receiveFunds() private notTooSmallAmountOnly {
    |      // no overflow is possible here: nobody have soo much money to spend.
    |      if (total_received_amount + msg.value > MAX_TOTAL_AMOUNT_TO_RECEIVE) {
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |
    |
  > |    function currentState() private constant returns (State) {
    |        if (isAborted) {
    |            return this.balance > 0 
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(146)

[31mViolation[0m for TODAmount in contract 'Presale':
    |    {
    |        // transfer funds to owner if any
  > |        if (!OWNER.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(96)

[31mViolation[0m for TODAmount in contract 'Presale':
    |          // accept amount only and return change
    |          var change_to_return = total_received_amount + msg.value - MAX_TOTAL_AMOUNT_TO_RECEIVE;
  > |          if (!msg.sender.send(change_to_return)) throw;
    |
    |          var acceptable_remainder = MAX_TOTAL_AMOUNT_TO_RECEIVE - total_received_amount;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(133)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |        balances[msg.sender] = 0;
    |        // send refund back to sender
  > |        if (!msg.sender.send(amount_to_refund)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(124)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |          // accept amount only and return change
    |          var change_to_return = total_received_amount + msg.value - MAX_TOTAL_AMOUNT_TO_RECEIVE;
  > |          if (!msg.sender.send(change_to_return)) throw;
    |
    |          var acceptable_remainder = MAX_TOTAL_AMOUNT_TO_RECEIVE - total_received_amount;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(133)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    {
    |        // transfer funds to owner if any
  > |        if (!OWNER.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(96)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |        balances[msg.sender] = 0;
    |        // send refund back to sender
  > |        if (!msg.sender.send(amount_to_refund)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(124)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |          // accept amount only and return change
    |          var change_to_return = total_received_amount + msg.value - MAX_TOTAL_AMOUNT_TO_RECEIVE;
  > |          if (!msg.sender.send(change_to_return)) throw;
    |
    |          var acceptable_remainder = MAX_TOTAL_AMOUNT_TO_RECEIVE - total_received_amount;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    {
    |        // transfer funds to owner if any
  > |        if (!OWNER.send(this.balance)) throw;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'Presale':
    |          var acceptable_remainder = MAX_TOTAL_AMOUNT_TO_RECEIVE - total_received_amount;
    |          balances[msg.sender] += acceptable_remainder;
  > |          total_received_amount += acceptable_remainder;
    |      } else {
    |          // accept full amount
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'Presale':
    |          // accept full amount
    |          balances[msg.sender] += msg.value;
  > |          total_received_amount += msg.value;
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'Presale':
    |    modifier noReentrancy() {
    |        if (locked) throw;
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'Presale':
    |        locked = true;
    |        _;
  > |        locked = false;
    |    }
    |}//contract
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |        var amount_to_refund = balances[msg.sender] + msg.value;
    |        // reset balance
  > |        balances[msg.sender] = 0;
    |        // send refund back to sender
    |        if (!msg.sender.send(amount_to_refund)) throw;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |          var acceptable_remainder = MAX_TOTAL_AMOUNT_TO_RECEIVE - total_received_amount;
  > |          balances[msg.sender] += acceptable_remainder;
    |          total_received_amount += acceptable_remainder;
    |      } else {
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |      } else {
    |          // accept full amount
  > |          balances[msg.sender] += msg.value;
    |          total_received_amount += msg.value;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    onlyOwner
    |    {
  > |        isAborted = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    modifier noReentrancy() {
    |        if (locked) throw;
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |        locked = true;
    |        _;
  > |        locked = false;
    |    }
    |}//contract
  at /home/jiaming/mavs_srcs/contract@0x18714dba089604fe18a7af33871198fd470ffb3a.sol(222)


