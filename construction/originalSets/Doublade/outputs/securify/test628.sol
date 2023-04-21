Processing contract: /home/jiaming/mavs_srcs/contract@0x2807e558a7eba8d25c3a05a0e7e9a6a437a6e6a4.sol:DNSResolver
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2807e558a7eba8d25c3a05a0e7e9a6a437a6e6a4.sol:Resolver
[31mViolation[0m for LockedEther in contract 'DNSResolver':
    |}
    |
  > |contract DNSResolver is Resolver {
    |    address public owner;
    |    mapping(bytes32=>bytes) zones;
  at /home/jiaming/mavs_srcs/contract@0x2807e558a7eba8d25c3a05a0e7e9a6a437a6e6a4.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'DNSResolver':
    |}
    |
  > |contract DNSResolver is Resolver {
    |    address public owner;
    |    mapping(bytes32=>bytes) zones;
  at /home/jiaming/mavs_srcs/contract@0x2807e558a7eba8d25c3a05a0e7e9a6a437a6e6a4.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'DNSResolver':
    |    
    |    function OwnedResolver() {
  > |        owner = msg.sender;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2807e558a7eba8d25c3a05a0e7e9a6a437a6e6a4.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'DNSResolver':
    |}
    |
  > |contract DNSResolver is Resolver {
    |    address public owner;
    |    mapping(bytes32=>bytes) zones;
  at /home/jiaming/mavs_srcs/contract@0x2807e558a7eba8d25c3a05a0e7e9a6a437a6e6a4.sol(8)


