Processing contract: /home/jiaming/mavs_srcs/contract@0x762e90ffae540d56c428b472326de71ef0c8b5fe.sol:P4PState
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'P4PState':
  > |contract P4PState {
    |    /** Stateless contract for persisting game states
    |    @param states IPFS hashes (stripped of the type-length-value, see https://multiformats.io/multihash/)
  at /home/jiaming/mavs_srcs/contract@0x762e90ffae540d56c428b472326de71ef0c8b5fe.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'P4PState':
    |    Remaining bits are set to 0.
    |    */
  > |    function addGames(bytes32[] states, bytes32[] boards) {}
    |}
  at /home/jiaming/mavs_srcs/contract@0x762e90ffae540d56c428b472326de71ef0c8b5fe.sol(11)


