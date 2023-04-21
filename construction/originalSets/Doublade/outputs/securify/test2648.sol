Processing contract: /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol:AddressTree
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressTree':
    |}
    |
  > |contract AddressTree is Owned{
    |    
    |    // Max number of items in tree 
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'AddressTree':
    |    }
    |    
  > |    function changeOwner(address _newOwner) public onlyOwner {
    |        ownerCandidate = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'AddressTree':
    |    }
    |    
  > |    mapping(address => Tree) public TreeList; 
    |    
    |    function CheckTree(address root)
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'AddressTree':
    |    
    |    
  > |    function AddItem(address root, address target)
    |        public
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'AddressTree':
    |    }
    |    
  > |    function SetItem(address root, uint256 index, address target)
    |        public    
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'AddressTree':
    |    
    |    //web view item
  > |    function GetItems(address target)
    |        view
    |        public
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'AddressTree':
    |
    |contract Owned {
  > |    address public owner;
    |    address public ownerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'AddressTree':
    |contract Owned {
    |    address public owner;
  > |    address public ownerCandidate;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'AddressTree':
    |    }
    |    
  > |    function acceptOwnership() public {
    |        require(msg.sender == ownerCandidate);  
    |        owner = ownerCandidate;
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'AddressTree':
    |}
    |
  > |contract AddressTree is Owned{
    |    
    |    // Max number of items in tree 
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'AddressTree':
    |    
    |    // Max number of items in tree 
  > |    uint256 public constant TreeLim = 2;
    |    
    |    struct Tree{
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'AddressTree':
    |    mapping(address => Tree) public TreeList; 
    |    
  > |    function CheckTree(address root)
    |        internal
    |    {
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressTree':
    |        if (CurrentTree.Item == address(0x0)){
    |            // empty tree 
  > |            CurrentTree.Item = root;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressTree':
    |                
    |                Tree storage TargetTree = TreeList[target];
  > |                CurrentTree.Items[i] = TargetTree;
    |                return;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'AddressTree':
    |        Tree storage CurrentTree = TreeList[root];
    |        Tree storage TargetTree = TreeList[target];
  > |        CurrentTree.Items[index] = TargetTree;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressTree':
    |    
    |    function changeOwner(address _newOwner) public onlyOwner {
  > |        ownerCandidate = _newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressTree':
    |    function acceptOwnership() public {
    |        require(msg.sender == ownerCandidate);  
  > |        owner = ownerCandidate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'AddressTree':
    |        if (CurrentTree.Item == address(0x0)){
    |            // empty tree 
  > |            CurrentTree.Item = root;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(45)

[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.24;
    |
  > |contract Owned {
    |    address public owner;
    |    address public ownerCandidate;
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function changeOwner(address _newOwner) public onlyOwner {
    |        ownerCandidate = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public ownerCandidate;
    |
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public ownerCandidate;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function acceptOwnership() public {
    |        require(msg.sender == ownerCandidate);  
    |        owner = ownerCandidate;
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    
    |    function changeOwner(address _newOwner) public onlyOwner {
  > |        ownerCandidate = _newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function acceptOwnership() public {
    |        require(msg.sender == ownerCandidate);  
  > |        owner = ownerCandidate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xace8a1e0102dbe6d31208a16fb8b6e27d537b869.sol(22)


