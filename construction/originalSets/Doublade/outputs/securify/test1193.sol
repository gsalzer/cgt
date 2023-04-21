Processing contract: /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol:AbstractENS
Processing contract: /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol:Resolver
Processing contract: /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol:ReverseRegistrar
Processing contract: /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol:SimpleRegistrar
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'SimpleRegistrar':
    |    
    |    function withdraw() owner_only {
  > |        if(!msg.sender.send(this.balance)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(90)

[33mWarning[0m for DAOConstantGas in contract 'SimpleRegistrar':
    |        // Send any excess ether back
    |        if(msg.value > fee) {
  > |            if(!msg.sender.send(msg.value - fee)) throw;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(124)

[33mWarning[0m for LockedEther in contract 'SimpleRegistrar':
    |}
    |
  > |contract SimpleRegistrar is owned {
    |    // namehash('addr.reverse')
    |    bytes32 constant RR_NODE = 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2;
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'SimpleRegistrar':
    |    }
    |    
  > |    function setOwner(address _owner) owner_only {
    |        owner = _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'SimpleRegistrar':
    |    }
    |    
  > |    function setFee(uint _fee) owner_only {
    |        fee = _fee;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(93)

[31mViolation[0m for MissingInputValidation in contract 'SimpleRegistrar':
    |    }
    |    
  > |    function setResolver(Resolver _resolver) owner_only {
    |        resolver = _resolver;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'SimpleRegistrar':
    |    event HashRegistered(bytes32 indexed hash, address indexed owner);
    |
  > |    AbstractENS public ens;
    |    bytes32 public rootNode;
    |    uint public fee;
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'SimpleRegistrar':
    |
    |    AbstractENS public ens;
  > |    bytes32 public rootNode;
    |    uint public fee;
    |    // Temporary until we have a public address for it
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'SimpleRegistrar':
    |    AbstractENS public ens;
    |    bytes32 public rootNode;
  > |    uint public fee;
    |    // Temporary until we have a public address for it
    |    Resolver public resolver;
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'SimpleRegistrar':
    |    uint public fee;
    |    // Temporary until we have a public address for it
  > |    Resolver public resolver;
    |    
    |    function SimpleRegistrar(AbstractENS _ens, bytes32 _rootNode, uint _fee, Resolver _resolver) {
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'SimpleRegistrar':
    |    }
    |    
  > |    function withdraw() owner_only {
    |        if(!msg.sender.send(this.balance)) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'SimpleRegistrar':
    |    }
    |    
  > |    function register(string name) payable can_register(sha3(name)) {
    |        var label = sha3(name);
    |        
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(106)

[31mViolation[0m for TODAmount in contract 'SimpleRegistrar':
    |    
    |    function withdraw() owner_only {
  > |        if(!msg.sender.send(this.balance)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(90)

[31mViolation[0m for TODAmount in contract 'SimpleRegistrar':
    |        // Send any excess ether back
    |        if(msg.value > fee) {
  > |            if(!msg.sender.send(msg.value - fee)) throw;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(124)

[33mWarning[0m for TODReceiver in contract 'SimpleRegistrar':
    |    
    |    function withdraw() owner_only {
  > |        if(!msg.sender.send(this.balance)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(90)

[33mWarning[0m for TODReceiver in contract 'SimpleRegistrar':
    |        // Send any excess ether back
    |        if(msg.value > fee) {
  > |            if(!msg.sender.send(msg.value - fee)) throw;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(124)

[33mWarning[0m for UnhandledException in contract 'SimpleRegistrar':
    |    
    |    function withdraw() owner_only {
  > |        if(!msg.sender.send(this.balance)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(90)

[33mWarning[0m for UnhandledException in contract 'SimpleRegistrar':
    |    
    |    modifier can_register(bytes32 label) {
  > |        if(ens.owner(sha3(rootNode, label)) != 0 || msg.value < fee) throw;
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(102)

[33mWarning[0m for UnhandledException in contract 'SimpleRegistrar':
    |        
    |        // First register the name to ourselves
  > |        ens.setSubnodeOwner(rootNode, label, this);
    |        
    |        // Now set a resolver up
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(110)

[33mWarning[0m for UnhandledException in contract 'SimpleRegistrar':
    |        // Now set a resolver up
    |        var node = sha3(rootNode, label);
  > |        ens.setResolver(node, resolver);
    |        resolver.setAddr(node, msg.sender);
    |        
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(114)

[33mWarning[0m for UnhandledException in contract 'SimpleRegistrar':
    |        var node = sha3(rootNode, label);
    |        ens.setResolver(node, resolver);
  > |        resolver.setAddr(node, msg.sender);
    |        
    |        // Now transfer ownership to the user
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(115)

[33mWarning[0m for UnhandledException in contract 'SimpleRegistrar':
    |        
    |        // Now transfer ownership to the user
  > |        ens.setOwner(node, msg.sender);
    |        
    |        HashRegistered(label, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(118)

[33mWarning[0m for UnhandledException in contract 'SimpleRegistrar':
    |        // Send any excess ether back
    |        if(msg.value > fee) {
  > |            if(!msg.sender.send(msg.value - fee)) throw;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleRegistrar':
    |    
    |    function withdraw() owner_only {
  > |        if(!msg.sender.send(this.balance)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(90)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleRegistrar':
    |    
    |    modifier can_register(bytes32 label) {
  > |        if(ens.owner(sha3(rootNode, label)) != 0 || msg.value < fee) throw;
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(102)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleRegistrar':
    |        
    |        // First register the name to ourselves
  > |        ens.setSubnodeOwner(rootNode, label, this);
    |        
    |        // Now set a resolver up
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleRegistrar':
    |        // Now set a resolver up
    |        var node = sha3(rootNode, label);
  > |        ens.setResolver(node, resolver);
    |        resolver.setAddr(node, msg.sender);
    |        
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleRegistrar':
    |        var node = sha3(rootNode, label);
    |        ens.setResolver(node, resolver);
  > |        resolver.setAddr(node, msg.sender);
    |        
    |        // Now transfer ownership to the user
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleRegistrar':
    |        
    |        // Now transfer ownership to the user
  > |        ens.setOwner(node, msg.sender);
    |        
    |        HashRegistered(label, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleRegistrar':
    |    
    |    function setOwner(address _owner) owner_only {
  > |        owner = _owner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleRegistrar':
    |    
    |    function setFee(uint _fee) owner_only {
  > |        fee = _fee;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleRegistrar':
    |    
    |    function setResolver(Resolver _resolver) owner_only {
  > |        resolver = _resolver;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(98)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |
  > |contract owned {
    |    address owner;
    |    
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |    
  > |    function setOwner(address _owner) owner_only {
    |        owner = _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    
    |    function setOwner(address _owner) owner_only {
  > |        owner = _owner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4b855725bb816b7e2b3e67bcffe0436b407675ae.sol(55)


