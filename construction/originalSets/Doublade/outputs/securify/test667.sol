Processing contract: /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol:DSExec
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol:DSSpell
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DSExec':
    |/* pragma solidity >=0.4.23; */
    |
  > |contract DSExec {
    |    function tryExec( address target, bytes memory data, uint value)
    |             internal
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(24)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |/* pragma solidity >=0.4.23; */
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(84)

[31mViolation[0m for DAO in contract 'DSSpell':
    |    {
    |        assembly {
  > |            ok := call(gas, target, value, add(data, 0x20), mload(data), 0, 0)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(30)

[33mWarning[0m for DAO in contract 'DSSpell':
    |    {
    |        assembly {
  > |            ok := call(gas, target, value, add(data, 0x20), mload(data), 0, 0)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(30)

[33mWarning[0m for LockedEther in contract 'DSSpell':
    |/* import "ds-note/note.sol"; */
    |
  > |contract DSSpell is DSExec, DSNote {
    |    address public whom;
    |    uint256 public mana;
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'DSSpell':
    |
    |contract DSExec {
  > |    function tryExec( address target, bytes memory data, uint value)
    |             internal
    |             returns (bool ok)
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'DSSpell':
    |        }
    |    }
  > |    function exec( address target, bytes memory data, uint value)
    |             internal
    |    {
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSSpell':
    |
    |contract DSSpell is DSExec, DSNote {
  > |    address public whom;
    |    uint256 public mana;
    |    bytes   public data;
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'DSSpell':
    |contract DSSpell is DSExec, DSNote {
    |    address public whom;
  > |    uint256 public mana;
    |    bytes   public data;
    |    bool    public done;
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'DSSpell':
    |    address public whom;
    |    uint256 public mana;
  > |    bytes   public data;
    |    bool    public done;
    |
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'DSSpell':
    |    uint256 public mana;
    |    bytes   public data;
  > |    bool    public done;
    |
    |    constructor(address whom_, uint256 mana_, bytes memory data_) public {
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'DSSpell':
    |    }
    |    // Only marked 'done' if CALL succeeds (not exceptional condition).
  > |    function cast() public note {
    |        require(!done, "ds-spell-already-cast");
    |        exec(whom, data, mana);
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(146)

[33mWarning[0m for TODAmount in contract 'DSSpell':
    |    {
    |        assembly {
  > |            ok := call(gas, target, value, add(data, 0x20), mload(data), 0, 0)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(30)

[33mWarning[0m for TODReceiver in contract 'DSSpell':
    |    {
    |        assembly {
  > |            ok := call(gas, target, value, add(data, 0x20), mload(data), 0, 0)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(30)

[31mViolation[0m for UnhandledException in contract 'DSSpell':
    |    {
    |        assembly {
  > |            ok := call(gas, target, value, add(data, 0x20), mload(data), 0, 0)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(30)

[33mWarning[0m for UnhandledException in contract 'DSSpell':
    |    {
    |        assembly {
  > |            ok := call(gas, target, value, add(data, 0x20), mload(data), 0, 0)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(30)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'DSSpell':
    |    {
    |        assembly {
  > |            ok := call(gas, target, value, add(data, 0x20), mload(data), 0, 0)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'DSSpell':
    |        require(!done, "ds-spell-already-cast");
    |        exec(whom, data, mana);
  > |        done = true;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2a8e8588ae9d420656c49c910c2c820450a01f95.sol(149)


