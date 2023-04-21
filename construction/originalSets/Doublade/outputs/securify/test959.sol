Processing contract: /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol:EscrowChecker
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol:HavvenEscrow
[33mWarning[0m for LockedEther in contract 'EscrowChecker':
    |
    |
  > |contract EscrowChecker {
    |    HavvenEscrow public havven_escrow;
    |    function EscrowChecker(HavvenEscrow _esc) public {
  at /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol(10)

[31mViolation[0m for MissingInputValidation in contract 'EscrowChecker':
    |    }
    |
  > |    function checkAccountSchedule(address account)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'EscrowChecker':
    |
    |
  > |contract EscrowChecker {
    |    HavvenEscrow public havven_escrow;
    |    function EscrowChecker(HavvenEscrow _esc) public {
  at /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'EscrowChecker':
    |
    |contract EscrowChecker {
  > |    HavvenEscrow public havven_escrow;
    |    function EscrowChecker(HavvenEscrow _esc) public {
    |        havven_escrow = _esc;
  at /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol(11)

[33mWarning[0m for UnhandledException in contract 'EscrowChecker':
    |    {
    |        uint[16] memory _result;
  > |        uint schedules = havven_escrow.numVestingEntries(account);
    |        for (uint i=0; i < schedules; i++) {
    |            uint[2] memory pair = havven_escrow.getVestingScheduleEntry(account, i);
  at /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol(22)

[33mWarning[0m for UnhandledException in contract 'EscrowChecker':
    |        uint schedules = havven_escrow.numVestingEntries(account);
    |        for (uint i=0; i < schedules; i++) {
  > |            uint[2] memory pair = havven_escrow.getVestingScheduleEntry(account, i);
    |            _result[i*2] = pair[0];
    |            _result[i*2 + 1] = pair[1];
  at /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol(24)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EscrowChecker':
    |    {
    |        uint[16] memory _result;
  > |        uint schedules = havven_escrow.numVestingEntries(account);
    |        for (uint i=0; i < schedules; i++) {
    |            uint[2] memory pair = havven_escrow.getVestingScheduleEntry(account, i);
  at /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol(22)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EscrowChecker':
    |        uint schedules = havven_escrow.numVestingEntries(account);
    |        for (uint i=0; i < schedules; i++) {
  > |            uint[2] memory pair = havven_escrow.getVestingScheduleEntry(account, i);
    |            _result[i*2] = pair[0];
    |            _result[i*2 + 1] = pair[1];
  at /home/jiaming/mavs_srcs/contract@0x3c9df924b16b321847096a47d2d57d4a3259d060.sol(24)


