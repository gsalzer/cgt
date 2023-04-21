Processing contract: /home/jiaming/mavs_srcs/contract@0x63c324943abe5c0aab6274f7b7a914edcfc123de.sol:Caller
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x63c324943abe5c0aab6274f7b7a914edcfc123de.sol:Coin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Caller':
    |}
    |
  > |contract Caller {
    |
    |    function f() public view returns (address) {
  at /home/jiaming/mavs_srcs/contract@0x63c324943abe5c0aab6274f7b7a914edcfc123de.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Caller':
    |contract Caller {
    |
  > |    function f() public view returns (address) {
    |         Coin c = Coin(address(0x003FfEFeFBC4a6F34a62A3cA7b7937a880065BCB));
    |        return c.owners();
  at /home/jiaming/mavs_srcs/contract@0x63c324943abe5c0aab6274f7b7a914edcfc123de.sol(9)

[33mWarning[0m for UnhandledException in contract 'Caller':
    |    function f() public view returns (address) {
    |         Coin c = Coin(address(0x003FfEFeFBC4a6F34a62A3cA7b7937a880065BCB));
  > |        return c.owners();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x63c324943abe5c0aab6274f7b7a914edcfc123de.sol(11)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Caller':
    |    function f() public view returns (address) {
    |         Coin c = Coin(address(0x003FfEFeFBC4a6F34a62A3cA7b7937a880065BCB));
  > |        return c.owners();
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x63c324943abe5c0aab6274f7b7a914edcfc123de.sol(11)

[33mWarning[0m for LockedEther in contract 'Coin':
    |pragma solidity >=0.4.0 <0.6.0;
    |
  > |contract Coin {
    |    address public owners;
    |}
  at /home/jiaming/mavs_srcs/contract@0x63c324943abe5c0aab6274f7b7a914edcfc123de.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Coin':
    |
    |contract Coin {
  > |    address public owners;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x63c324943abe5c0aab6274f7b7a914edcfc123de.sol(4)


