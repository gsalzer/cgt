Processing contract: /home/jiaming/mavs_srcs/contract@0xd273db2efbe7963347543f9c73d5d1330da4c9af.sol:EDProxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EDProxy':
    |
    |
  > |contract EDProxy {
    |
    |    function EDProxy() public {
  at /home/jiaming/mavs_srcs/contract@0xd273db2efbe7963347543f9c73d5d1330da4c9af.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'EDProxy':
    |    }
    |
  > |    function dtrade(address _callee, uint8 v1, uint8 v2, uint256[] uints,address[] addresses,bytes32[] b) public {
    |        
    |        if (_callee.delegatecall(bytes4(keccak256("trade(address,uint256,address,uint256,uint256,uint256,address,uint8,bytes32,bytes32,uint256)")),
  at /home/jiaming/mavs_srcs/contract@0xd273db2efbe7963347543f9c73d5d1330da4c9af.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'EDProxy':
    |    }
    |    
  > |     function testcall(address _callee)  public {
    |        bytes32[] memory b = new bytes32[](4);
    |        address[] memory addrs = new address[](6);
  at /home/jiaming/mavs_srcs/contract@0xd273db2efbe7963347543f9c73d5d1330da4c9af.sol(40)


