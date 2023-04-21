Processing contract: /home/jiaming/mavs_srcs/contract@0x2126169c5de7283a0c2f4477ca6c26d0d2c59468.sol:EthereumClaimsRegistry
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'EthereumClaimsRegistry':
    |
    |//ERC780 implementaion
  > |contract EthereumClaimsRegistry {
    |
    |    mapping(address => mapping(address => mapping(bytes32 => bytes32))) public registry;
  at /home/jiaming/mavs_srcs/contract@0x2126169c5de7283a0c2f4477ca6c26d0d2c59468.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'EthereumClaimsRegistry':
    |contract EthereumClaimsRegistry {
    |
  > |    mapping(address => mapping(address => mapping(bytes32 => bytes32))) public registry;
    |
    |    event ClaimSet(
  at /home/jiaming/mavs_srcs/contract@0x2126169c5de7283a0c2f4477ca6c26d0d2c59468.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'EthereumClaimsRegistry':
    |
    |    // create or update clams
  > |    function setClaim(address subject, bytes32 key, bytes32 value) public {
    |        registry[msg.sender][subject][key] = value;
    |        emit ClaimSet(msg.sender, subject, key, value, now);
  at /home/jiaming/mavs_srcs/contract@0x2126169c5de7283a0c2f4477ca6c26d0d2c59468.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'EthereumClaimsRegistry':
    |    }
    |
  > |    function setSelfClaim(bytes32 key, bytes32 value) public {
    |        setClaim(msg.sender, key, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2126169c5de7283a0c2f4477ca6c26d0d2c59468.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'EthereumClaimsRegistry':
    |    }
    |
  > |    function getClaim(address issuer, address subject, bytes32 key) public view returns(bytes32) {
    |        return registry[issuer][subject][key];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2126169c5de7283a0c2f4477ca6c26d0d2c59468.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'EthereumClaimsRegistry':
    |    }
    |
  > |    function removeClaim(address issuer, address subject, bytes32 key) public {
    |        require(msg.sender == issuer);
    |        delete registry[issuer][subject][key];
  at /home/jiaming/mavs_srcs/contract@0x2126169c5de7283a0c2f4477ca6c26d0d2c59468.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumClaimsRegistry':
    |    // create or update clams
    |    function setClaim(address subject, bytes32 key, bytes32 value) public {
  > |        registry[msg.sender][subject][key] = value;
    |        emit ClaimSet(msg.sender, subject, key, value, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2126169c5de7283a0c2f4477ca6c26d0d2c59468.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumClaimsRegistry':
    |    function removeClaim(address issuer, address subject, bytes32 key) public {
    |        require(msg.sender == issuer);
  > |        delete registry[issuer][subject][key];
    |        emit ClaimRemoved(msg.sender, subject, key, now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2126169c5de7283a0c2f4477ca6c26d0d2c59468.sol(37)


