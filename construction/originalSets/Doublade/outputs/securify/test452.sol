Processing contract: /home/jiaming/mavs_srcs/contract@0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.sol:OraclizeAddrResolver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'OraclizeAddrResolver':
    |*/
    |
  > |contract OraclizeAddrResolver {
    |
    |    address public addr;
  at /home/jiaming/mavs_srcs/contract@0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'OraclizeAddrResolver':
    |    }
    |    
  > |    function setAddr(address newaddr){
    |        if (msg.sender != owner) throw;
    |        addr = newaddr;
  at /home/jiaming/mavs_srcs/contract@0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'OraclizeAddrResolver':
    |contract OraclizeAddrResolver {
    |
  > |    address public addr;
    |    
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'OraclizeAddrResolver':
    |    
    |    
  > |    function getAddress() returns (address oaddr){
    |        return addr;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclizeAddrResolver':
    |    function setAddr(address newaddr){
    |        if (msg.sender != owner) throw;
  > |        addr = newaddr;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.sol(22)


