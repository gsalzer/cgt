Processing contract: /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol:DigitalPadlock
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol:EthernalLoveParent
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DigitalPadlock':
  > |contract DigitalPadlock {
    |    string public message;
    |
  at /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'DigitalPadlock':
    |contract DigitalPadlock {
  > |    string public message;
    |
    |    function DigitalPadlock(string _m) public {
  at /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol(2)

[33mWarning[0m for LockedEther in contract 'EthernalLoveParent':
    |}
    |
  > |contract EthernalLoveParent {
    |  address owner;
    |  address[] public padlocks;
  at /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'EthernalLoveParent':
    |}
    |
  > |contract EthernalLoveParent {
    |  address owner;
    |  address[] public padlocks;
  at /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'EthernalLoveParent':
    |contract EthernalLoveParent {
    |  address owner;
  > |  address[] public padlocks;
    |  event LogCreatedValentine(address padlock); // maybe listen for events
    |
  at /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'EthernalLoveParent':
    |  }
    |
  > |  function createPadlock(string _m) public {
    |    DigitalPadlock d = new DigitalPadlock(_m);
    |    LogCreatedValentine(d); // emit an event
  at /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernalLoveParent':
    |contract DigitalPadlock {
  > |    string public message;
    |
    |    function DigitalPadlock(string _m) public {
  at /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'EthernalLoveParent':
    |    DigitalPadlock d = new DigitalPadlock(_m);
    |    LogCreatedValentine(d); // emit an event
  > |    padlocks.push(d); 
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3559ffe4ad79d4627b1e404706574aa44705d26b.sol(21)


