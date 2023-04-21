Processing contract: /home/jiaming/mavs_srcs/contract@0x63bf4b83d9888bfffade6e1d1a3c03208a6872d4.sol:AmIOnTheFork
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x63bf4b83d9888bfffade6e1d1a3c03208a6872d4.sol:MyReplaySafeProxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AmIOnTheFork':
  > |contract AmIOnTheFork {
    |    bool public forked = false;
    |    address constant darkDAO = 0x304a554a310c7e546dfe434669c62820b7d83490;
  at /home/jiaming/mavs_srcs/contract@0x63bf4b83d9888bfffade6e1d1a3c03208a6872d4.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'AmIOnTheFork':
    |contract AmIOnTheFork {
  > |    bool public forked = false;
    |    address constant darkDAO = 0x304a554a310c7e546dfe434669c62820b7d83490;
    |    // Check the fork condition during creation of the contract.
  at /home/jiaming/mavs_srcs/contract@0x63bf4b83d9888bfffade6e1d1a3c03208a6872d4.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'AmIOnTheFork':
    |    // Approximately between 2016-07-20 12:00:00 UTC and 2016-07-20 17:00:00 UTC.
    |    // After that the status will be locked in.
  > |    function update() {
    |        if (block.number >= 1920000 && block.number <= 1921200) {
    |            forked = darkDAO.balance < 3600000 ether;
  at /home/jiaming/mavs_srcs/contract@0x63bf4b83d9888bfffade6e1d1a3c03208a6872d4.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'AmIOnTheFork':
    |    function update() {
    |        if (block.number >= 1920000 && block.number <= 1921200) {
  > |            forked = darkDAO.balance < 3600000 ether;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x63bf4b83d9888bfffade6e1d1a3c03208a6872d4.sol(10)

[33mWarning[0m for LockedEther in contract 'MyReplaySafeProxy':
    |}
    |
  > |contract MyReplaySafeProxy {
    |    
    |    address eth_target = 0x447F7556C8D2E5281438358087DdD368B6bCb824; 
  at /home/jiaming/mavs_srcs/contract@0x63bf4b83d9888bfffade6e1d1a3c03208a6872d4.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'MyReplaySafeProxy':
    |    address ethc_target = 0xCd76f273d307551016452724241EA3C1775270a2;
    |
  > |	address public target;
    |	
    |    AmIOnTheFork amIOnTheFork = AmIOnTheFork(0x2bd2326c993dfaef84f696526064ff22eba5b362);
  at /home/jiaming/mavs_srcs/contract@0x63bf4b83d9888bfffade6e1d1a3c03208a6872d4.sol(23)


