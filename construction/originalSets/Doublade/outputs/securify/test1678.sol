Processing contract: /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol:TEMTicket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'TEMTicket':
    |
    |    function withdraw () public {
  > |        TEMWallet.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(34)

[33mWarning[0m for LockedEther in contract 'TEMTicket':
    |
    |
  > |contract TEMTicket {
    |    uint256 constant public FEE = 0.015 ether;
    |
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'TEMTicket':
    |    uint256 constant public FEE = 0.015 ether;
    |
  > |    mapping (uint256 => address) public id2Addr;
    |    mapping (address => uint256) public userId;
    |    address public TEMWallet;
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'TEMTicket':
    |
    |    mapping (uint256 => address) public id2Addr;
  > |    mapping (address => uint256) public userId;
    |    address public TEMWallet;
    |    uint256 public userAmount;
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TEMTicket':
    |
    |contract TEMTicket {
  > |    uint256 constant public FEE = 0.015 ether;
    |
    |    mapping (uint256 => address) public id2Addr;
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'TEMTicket':
    |    mapping (uint256 => address) public id2Addr;
    |    mapping (address => uint256) public userId;
  > |    address public TEMWallet;
    |    uint256 public userAmount;
    |    uint256 public maxAttendees;
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'TEMTicket':
    |    mapping (address => uint256) public userId;
    |    address public TEMWallet;
  > |    uint256 public userAmount;
    |    uint256 public maxAttendees;
    |    uint256 public startTime;
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'TEMTicket':
    |    address public TEMWallet;
    |    uint256 public userAmount;
  > |    uint256 public maxAttendees;
    |    uint256 public startTime;
    |
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'TEMTicket':
    |    uint256 public userAmount;
    |    uint256 public maxAttendees;
  > |    uint256 public startTime;
    |
    |    function TEMTicket(address _TEMWallet, uint256 _maxAttendees, uint256 _startTime) public {
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'TEMTicket':
    |    }
    |
  > |    function withdraw () public {
    |        TEMWallet.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(33)

[31mViolation[0m for TODAmount in contract 'TEMTicket':
    |
    |    function withdraw () public {
  > |        TEMWallet.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(34)

[33mWarning[0m for TODReceiver in contract 'TEMTicket':
    |
    |    function withdraw () public {
  > |        TEMWallet.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(34)

[33mWarning[0m for UnhandledException in contract 'TEMTicket':
    |
    |    function withdraw () public {
  > |        TEMWallet.transfer(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'TEMTicket':
    |    function getTicket (address _attendee) payable public {
    |        require(now >= startTime && msg.value >= FEE && userId[_attendee] == 0);
  > |        userAmount ++;
    |        require(userAmount <= maxAttendees);
    |        userId[_attendee] = userAmount;
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'TEMTicket':
    |        userAmount ++;
    |        require(userAmount <= maxAttendees);
  > |        userId[_attendee] = userAmount;
    |        id2Addr[userAmount] = _attendee;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'TEMTicket':
    |        require(userAmount <= maxAttendees);
    |        userId[_attendee] = userAmount;
  > |        id2Addr[userAmount] = _attendee;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6b24a17b69d60261b427e9e08837bc31230d8304.sol(30)


