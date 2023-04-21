Processing contract: /home/jiaming/mavs_srcs/contract@0xf14a0d8d4de33f7a01693b48734878f76dfbe747.sol:Caller
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf14a0d8d4de33f7a01693b48734878f76dfbe747.sol:Coin
[33mWarning[0m for LockedEther in contract 'Caller':
    |}
    |
  > |contract Caller {
    |    event console(address addr, uint256 amount);
    |    function f() public {
  at /home/jiaming/mavs_srcs/contract@0xf14a0d8d4de33f7a01693b48734878f76dfbe747.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Caller':
    |contract Caller {
    |    event console(address addr, uint256 amount);
  > |    function f() public {
    |        Coin c = Coin(0x003FfEFeFBC4a6F34a62A3cA7b7937a880065BCB);
    |        for (uint256 i = 0; i < c.getOwnerCount(); i++) {
  at /home/jiaming/mavs_srcs/contract@0xf14a0d8d4de33f7a01693b48734878f76dfbe747.sol(10)

[33mWarning[0m for UnhandledException in contract 'Caller':
    |    function f() public {
    |        Coin c = Coin(0x003FfEFeFBC4a6F34a62A3cA7b7937a880065BCB);
  > |        for (uint256 i = 0; i < c.getOwnerCount(); i++) {
    |            address addr;
    |            uint256 amount;
  at /home/jiaming/mavs_srcs/contract@0xf14a0d8d4de33f7a01693b48734878f76dfbe747.sol(12)

[33mWarning[0m for UnhandledException in contract 'Caller':
    |            address addr;
    |            uint256 amount;
  > |                (addr, amount)  = c.getOwner(i);
    |                 emit console(addr, amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf14a0d8d4de33f7a01693b48734878f76dfbe747.sol(15)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Caller':
    |    function f() public {
    |        Coin c = Coin(0x003FfEFeFBC4a6F34a62A3cA7b7937a880065BCB);
  > |        for (uint256 i = 0; i < c.getOwnerCount(); i++) {
    |            address addr;
    |            uint256 amount;
  at /home/jiaming/mavs_srcs/contract@0xf14a0d8d4de33f7a01693b48734878f76dfbe747.sol(12)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Caller':
    |            address addr;
    |            uint256 amount;
  > |                (addr, amount)  = c.getOwner(i);
    |                 emit console(addr, amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf14a0d8d4de33f7a01693b48734878f76dfbe747.sol(15)


