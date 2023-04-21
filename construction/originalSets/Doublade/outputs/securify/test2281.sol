Processing contract: /home/jiaming/mavs_srcs/contract@0x948d76e2c925cd35a50526c49f21006799253be3.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x948d76e2c925cd35a50526c49f21006799253be3.sol:EthereumSmartContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x948d76e2c925cd35a50526c49f21006799253be3.sol:ldoh
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EthereumSmartContract':
    |    ==============================*/
    |	
  > |contract EthereumSmartContract {    
    |    address EthereumNodes; 
    |	
  at /home/jiaming/mavs_srcs/contract@0x948d76e2c925cd35a50526c49f21006799253be3.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'EthereumSmartContract':
    |    } 
    |	
  > |    function GetEthereumNodes() public view returns (address owner) { return EthereumNodes; }
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x948d76e2c925cd35a50526c49f21006799253be3.sol(35)


