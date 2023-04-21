Processing contract: /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol:self_store
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'self_store':
    |
    |    function flush() {
  > |        owner.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(22)

[33mWarning[0m for LockedEther in contract 'self_store':
    |/* A contract to store only messages approved by owner */
  > |contract self_store {
    |
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'self_store':
    |    address owner;
    |
  > |    uint16 public contentCount = 0;
    |    
    |    event content(string datainfo); 
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'self_store':
    |    
    |    ///TODO: remove in release
  > |    function kill() { if (msg.sender == owner) suicide(owner); }
    |
    |    function add(string datainfo) {
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'self_store':
    |    function kill() { if (msg.sender == owner) suicide(owner); }
    |
  > |    function add(string datainfo) {
    |        if (msg.sender != owner) return;
    |        contentCount++;
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'self_store':
    |    }
    |
  > |    function flush() {
    |        owner.send(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(21)

[31mViolation[0m for TODAmount in contract 'self_store':
    |
    |    function flush() {
  > |        owner.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(22)

[31mViolation[0m for TODReceiver in contract 'self_store':
    |
    |    function flush() {
  > |        owner.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(22)

[31mViolation[0m for UnhandledException in contract 'self_store':
    |
    |    function flush() {
  > |        owner.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'self_store':
    |    function add(string datainfo) {
    |        if (msg.sender != owner) return;
  > |        contentCount++;
    |        content(datainfo);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9e03d5e3d86277574cfd5f7e842f213cf88945f.sol(17)


