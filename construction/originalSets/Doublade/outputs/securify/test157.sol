Processing contract: /home/jiaming/mavs_srcs/contract@0x0a630de26e5b41eaef08741e74da4018a6c2e14c.sol:dgame
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'dgame':
    | */
    |
  > |contract dgame {
    |    uint public registerDuration;
    |    uint public endRegisterTime;
  at /home/jiaming/mavs_srcs/contract@0x0a630de26e5b41eaef08741e74da4018a6c2e14c.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'dgame':
    |    uint public gameNumber;
    |    uint public numPlayers;
  > |    mapping(uint => mapping(uint => address)) public players;
    |    mapping(uint => mapping(address => bool)) public registered;
    |    event StartedGame(address initiator, uint regTimeEnd, uint amountSent, uint gameNumber);
  at /home/jiaming/mavs_srcs/contract@0x0a630de26e5b41eaef08741e74da4018a6c2e14c.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'dgame':
    |    uint public numPlayers;
    |    mapping(uint => mapping(uint => address)) public players;
  > |    mapping(uint => mapping(address => bool)) public registered;
    |    event StartedGame(address initiator, uint regTimeEnd, uint amountSent, uint gameNumber);
    |    event RegisteredPlayer(address player, uint gameNumber);
  at /home/jiaming/mavs_srcs/contract@0x0a630de26e5b41eaef08741e74da4018a6c2e14c.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'dgame':
    |
    |contract dgame {
  > |    uint public registerDuration;
    |    uint public endRegisterTime;
    |    uint public gameNumber;
  at /home/jiaming/mavs_srcs/contract@0x0a630de26e5b41eaef08741e74da4018a6c2e14c.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'dgame':
    |contract dgame {
    |    uint public registerDuration;
  > |    uint public endRegisterTime;
    |    uint public gameNumber;
    |    uint public numPlayers;
  at /home/jiaming/mavs_srcs/contract@0x0a630de26e5b41eaef08741e74da4018a6c2e14c.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'dgame':
    |    uint public registerDuration;
    |    uint public endRegisterTime;
  > |    uint public gameNumber;
    |    uint public numPlayers;
    |    mapping(uint => mapping(uint => address)) public players;
  at /home/jiaming/mavs_srcs/contract@0x0a630de26e5b41eaef08741e74da4018a6c2e14c.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'dgame':
    |    uint public endRegisterTime;
    |    uint public gameNumber;
  > |    uint public numPlayers;
    |    mapping(uint => mapping(uint => address)) public players;
    |    mapping(uint => mapping(address => bool)) public registered;
  at /home/jiaming/mavs_srcs/contract@0x0a630de26e5b41eaef08741e74da4018a6c2e14c.sol(20)


