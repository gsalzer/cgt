Processing contract: /home/jiaming/mavs_srcs/contract@0x8ddf7bbe1df74e09e9475272447ac3c5ae0beb15.sol:caller
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'caller':
    |
    |
  > |contract caller {
    |
    |    function caller() public {
  at /home/jiaming/mavs_srcs/contract@0x8ddf7bbe1df74e09e9475272447ac3c5ae0beb15.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'caller':
    |    }
    |
  > |    function delegate_2x(address callee, uint256[] uints,address[] addresses,bytes32[] b) public {
    |      
    |        if (callee.delegatecall(bytes4(keccak256("x(address,uint256,address,uint256,bytes32,bytes32)")),
  at /home/jiaming/mavs_srcs/contract@0x8ddf7bbe1df74e09e9475272447ac3c5ae0beb15.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'caller':
    |    }
    |    
  > |     function testcall(address callee)  public {
    |        bytes32[] memory b = new bytes32[](4);
    |        address[] memory addrs = new address[](6);
  at /home/jiaming/mavs_srcs/contract@0x8ddf7bbe1df74e09e9475272447ac3c5ae0beb15.sol(30)


