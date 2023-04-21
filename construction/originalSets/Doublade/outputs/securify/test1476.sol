Processing contract: /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol:CRTLotto
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CRTLotto':
    |    
    |    function withdrawEth() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(58)

[33mWarning[0m for LockedEther in contract 'CRTLotto':
    |}
    |
  > |contract CRTLotto is Owned {
    |    uint public ticketPrice;
    |    uint public totalTickets;
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'CRTLotto':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'CRTLotto':
    |    uint public totalTickets;
    |
  > |    mapping(uint => address) public tickets;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'CRTLotto':
    |    }
    |    
  > |    function setTicketPrice(uint _ticketPrice) external onlyOwner {
    |        ticketPrice = _ticketPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'CRTLotto':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'CRTLotto':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'CRTLotto':
    |    }
    |    
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'CRTLotto':
    |
    |contract CRTLotto is Owned {
  > |    uint public ticketPrice;
    |    uint public totalTickets;
    |
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'CRTLotto':
    |contract CRTLotto is Owned {
    |    uint public ticketPrice;
  > |    uint public totalTickets;
    |
    |    mapping(uint => address) public tickets;
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'CRTLotto':
    |    }
    |    
  > |    function resetLotto() external onlyOwner {
    |        totalTickets = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'CRTLotto':
    |    }
    |    
  > |    function withdrawEth() external onlyOwner {
    |        owner.transfer(address(this).balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(57)

[31mViolation[0m for TODAmount in contract 'CRTLotto':
    |    
    |    function withdrawEth() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(58)

[31mViolation[0m for TODReceiver in contract 'CRTLotto':
    |    
    |    function withdrawEth() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(58)

[33mWarning[0m for UnhandledException in contract 'CRTLotto':
    |    
    |    function withdrawEth() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(58)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CRTLotto':
    |    
    |    function withdrawEth() external onlyOwner {
  > |        owner.transfer(address(this).balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'CRTLotto':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'CRTLotto':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'CRTLotto':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(26)

[33mWarning[0m for UnrestrictedWrite in contract 'CRTLotto':
    |    
    |    function setTicketPrice(uint _ticketPrice) external onlyOwner {
  > |        ticketPrice = _ticketPrice;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'CRTLotto':
    |    
    |    function resetLotto() external onlyOwner {
  > |        totalTickets = 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(54)

[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.24;
    |
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |    
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(19)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x5dc8bc1418b17aeb7f73351220aa0a3f520dc8fe.sol(26)


