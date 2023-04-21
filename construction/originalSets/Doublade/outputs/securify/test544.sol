Processing contract: /home/jiaming/mavs_srcs/contract@0x23141df767233776f7cbbec497800ddedaa4c684.sol:BranchSender
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BranchSender':
    |  function send (address recipient) {
    |    if (!isRightBranch) throw;
  > |    if (!recipient.send (msg.value)) throw;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x23141df767233776f7cbbec497800ddedaa4c684.sol(35)

[33mWarning[0m for LockedEther in contract 'BranchSender':
    |// to be used after hard forks to clearly separate "classic" ether from "new"
    |// ether.
  > |contract BranchSender {
    |  // Is set to true if and only if we are currently in the "right" branch of
    |  // the blockchain, i.e. the branch this contract allows sending money in.
  at /home/jiaming/mavs_srcs/contract@0x23141df767233776f7cbbec497800ddedaa4c684.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'BranchSender':
    |  // @param recipient address to send money to if we are currently in the
    |  //                  "right" branch of the blockchain
  > |  function send (address recipient) {
    |    if (!isRightBranch) throw;
    |    if (!recipient.send (msg.value)) throw;
  at /home/jiaming/mavs_srcs/contract@0x23141df767233776f7cbbec497800ddedaa4c684.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'BranchSender':
    |  // Is set to true if and only if we are currently in the "right" branch of
    |  // the blockchain, i.e. the branch this contract allows sending money in.
  > |  bool public isRightBranch;
    |
    |  // Instantiate the contract.
  at /home/jiaming/mavs_srcs/contract@0x23141df767233776f7cbbec497800ddedaa4c684.sol(8)

[33mWarning[0m for TODReceiver in contract 'BranchSender':
    |  function send (address recipient) {
    |    if (!isRightBranch) throw;
  > |    if (!recipient.send (msg.value)) throw;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x23141df767233776f7cbbec497800ddedaa4c684.sol(35)

[33mWarning[0m for UnhandledException in contract 'BranchSender':
    |  function send (address recipient) {
    |    if (!isRightBranch) throw;
  > |    if (!recipient.send (msg.value)) throw;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x23141df767233776f7cbbec497800ddedaa4c684.sol(35)


