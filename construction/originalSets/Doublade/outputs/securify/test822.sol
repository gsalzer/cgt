Processing contract: /home/jiaming/mavs_srcs/contract@0x34c5f60185ce430684bbd99259fe01981127d852.sol:Caller
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x34c5f60185ce430684bbd99259fe01981127d852.sol:Coin
[33mWarning[0m for LockedEther in contract 'Caller':
    |}
    |
  > |contract Caller {
    |
    |    function f(uint index) public view returns (address, uint256) {
  at /home/jiaming/mavs_srcs/contract@0x34c5f60185ce430684bbd99259fe01981127d852.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'Caller':
    |contract Caller {
    |
  > |    function f(uint index) public view returns (address, uint256) {
    |         Coin c = Coin(0x003FfEFeFBC4a6F34a62A3cA7b7937a880065BCB);
    |        return c.getOwner(index);
  at /home/jiaming/mavs_srcs/contract@0x34c5f60185ce430684bbd99259fe01981127d852.sol(10)

[33mWarning[0m for UnhandledException in contract 'Caller':
    |    function f(uint index) public view returns (address, uint256) {
    |         Coin c = Coin(0x003FfEFeFBC4a6F34a62A3cA7b7937a880065BCB);
  > |        return c.getOwner(index);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34c5f60185ce430684bbd99259fe01981127d852.sol(12)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Caller':
    |    function f(uint index) public view returns (address, uint256) {
    |         Coin c = Coin(0x003FfEFeFBC4a6F34a62A3cA7b7937a880065BCB);
  > |        return c.getOwner(index);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x34c5f60185ce430684bbd99259fe01981127d852.sol(12)


