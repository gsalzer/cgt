Processing contract: /home/jiaming/mavs_srcs/contract@0x353168f83f16e7becfe3079097fa7ca7d8c7d2b5.sol:CrowdSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x353168f83f16e7becfe3079097fa7ca7d8c7d2b5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x353168f83f16e7becfe3079097fa7ca7d8c7d2b5.sol:TrakToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |/* taking ideas from Zeppelin solidity module */
  > |contract SafeMath {
    |
    |    // it is recommended to define functions which can neither read the state of blockchain nor write in it as pure instead of constant
  at /home/jiaming/mavs_srcs/contract@0x353168f83f16e7becfe3079097fa7ca7d8c7d2b5.sol(4)

[33mWarning[0m for LockedEther in contract 'TrakToken':
    |// The abstract token contract
    |
  > |contract TrakToken {
    |    function TrakToken () public {}
    |    function transfer (address ,uint) public pure { }
  at /home/jiaming/mavs_srcs/contract@0x353168f83f16e7becfe3079097fa7ca7d8c7d2b5.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'TrakToken':
    |contract TrakToken {
    |    function TrakToken () public {}
  > |    function transfer (address ,uint) public pure { }
    |    function burn (uint256) public pure { }
    |    function finalize() public pure { }
  at /home/jiaming/mavs_srcs/contract@0x353168f83f16e7becfe3079097fa7ca7d8c7d2b5.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'TrakToken':
    |    function TrakToken () public {}
    |    function transfer (address ,uint) public pure { }
  > |    function burn (uint256) public pure { }
    |    function finalize() public pure { }
    |    function changeTokensWallet (address) public pure { }
  at /home/jiaming/mavs_srcs/contract@0x353168f83f16e7becfe3079097fa7ca7d8c7d2b5.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'TrakToken':
    |    function transfer (address ,uint) public pure { }
    |    function burn (uint256) public pure { }
  > |    function finalize() public pure { }
    |    function changeTokensWallet (address) public pure { }
    |}
  at /home/jiaming/mavs_srcs/contract@0x353168f83f16e7becfe3079097fa7ca7d8c7d2b5.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'TrakToken':
    |    function burn (uint256) public pure { }
    |    function finalize() public pure { }
  > |    function changeTokensWallet (address) public pure { }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x353168f83f16e7becfe3079097fa7ca7d8c7d2b5.sol(46)


