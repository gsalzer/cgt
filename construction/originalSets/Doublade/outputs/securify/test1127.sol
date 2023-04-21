Processing contract: /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol:Database
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Database':
    |    function withdraw() public {
    |      require(msg.sender == owner);
  > |      owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol(16)

[33mWarning[0m for LockedEther in contract 'Database':
    |// An experiment in using contracts as public DBs on the blockchain
    |
  > |contract Database {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Database':
    |    */
    |
  > |    function put(uint256 _row, string _column, string _value) public {
    |        emit Table(_row, _column, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Database':
    |contract Database {
    |
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Database':
    |    }
    |    
  > |    function withdraw() public {
    |      require(msg.sender == owner);
    |      owner.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol(14)

[31mViolation[0m for TODAmount in contract 'Database':
    |    function withdraw() public {
    |      require(msg.sender == owner);
  > |      owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol(16)

[33mWarning[0m for TODReceiver in contract 'Database':
    |    function withdraw() public {
    |      require(msg.sender == owner);
  > |      owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol(16)

[33mWarning[0m for UnhandledException in contract 'Database':
    |    function withdraw() public {
    |      require(msg.sender == owner);
  > |      owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol(16)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Database':
    |    function withdraw() public {
    |      require(msg.sender == owner);
  > |      owner.transfer(address(this).balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x471bd1ec14c3309404ba23eda9dbc7f09b51d050.sol(16)


