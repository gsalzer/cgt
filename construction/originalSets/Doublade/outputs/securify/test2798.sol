Processing contract: /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol:FloorInvestRestrictions
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol:ICrowdsaleFormula
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol:IInvestRestrictions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol:Manageable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol:ParticipantInvestRestrictions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FloorInvestRestrictions':
    |
    |/**@dev Allows only investments with large enough amount only  */
  > |contract FloorInvestRestrictions is IInvestRestrictions {
    |
    |    /**@dev The smallest acceptible ether amount */
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |
    |    /**@dev True if address already invested */
  > |    mapping (address => bool) public investors;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |
    |    /**@dev IInvestRestrictions implementation */
  > |    function canInvest(address investor, uint amount, uint tokensLeft) constant returns (bool result) {
    |        
    |        //allow investment if it isn't the first one 
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |
    |    /**@dev IInvestRestrictions implementation */
  > |    function investHappened(address investor, uint amount) managerOnly {
    |        investors[investor] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |
    |    /**@dev Changes investment low cap */
  > |    function changeFloor(uint256 newFloor) managerOnly {
    |        floor = newFloor;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'FloorInvestRestrictions':
    |
    |    /**@dev The smallest acceptible ether amount */
  > |    uint256 public floor;
    |
    |    /**@dev True if address already invested */
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'FloorInvestRestrictions':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'FloorInvestRestrictions':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'FloorInvestRestrictions':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'FloorInvestRestrictions':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'FloorInvestRestrictions':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(74)

[33mWarning[0m for LockedEther in contract 'ICrowdsaleFormula':
    |
    |/**@dev Abstraction of crowdsale token calculation function */
  > |contract ICrowdsaleFormula {
    |
    |    /**@dev Returns amount of tokens that can be bought with given weiAmount */
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(137)

[33mWarning[0m for LockedEther in contract 'IInvestRestrictions':
    |
    |/** @dev Restrictions on investment */
  > |contract IInvestRestrictions is Manageable {
    |    /**@dev Returns true if investmet is allowed */
    |    function canInvest(address investor, uint amount, uint tokensLeft) constant returns (bool result) {
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'IInvestRestrictions':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(74)

[33mWarning[0m for LockedEther in contract 'Manageable':
    |///A token that have an owner and a list of managers that can perform some operations
    |///Owner is always a manager too
  > |contract Manageable is Owned {
    |
    |    event ManagerSet(address manager, bool state);
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'Manageable':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(74)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;        
    |
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(41)

[33mWarning[0m for LockedEther in contract 'ParticipantInvestRestrictions':
    |2. It is also possible to reserve a certain address using 'reserveFor'. 
    |    When such investor invests, the place becomes unreserved  */
  > |contract ParticipantInvestRestrictions is FloorInvestRestrictions {
    |
    |    struct ReservedInvestor {
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(156)

[33mWarning[0m for UnhandledException in contract 'ParticipantInvestRestrictions':
    |                return true;
    |            } else {
  > |                var (tokens, excess) = formula.howManyTokensForEther(amount);
    |                if (tokensLeft >= tokensReserved + tokens) {
    |                    return investors[investor] || hasFreePlaces();
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(219)

[33mWarning[0m for UnhandledException in contract 'ParticipantInvestRestrictions':
    |        uint256 tokens;
    |        uint256 excess;
  > |        (tokens, excess) = formula.howManyTokensForEther(weiAmount);
    |        
    |        if (tokensReserved + tokens > formula.tokensLeft()) {
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(296)

[33mWarning[0m for UnhandledException in contract 'ParticipantInvestRestrictions':
    |        (tokens, excess) = formula.howManyTokensForEther(weiAmount);
    |        
  > |        if (tokensReserved + tokens > formula.tokensLeft()) {
    |            tokens = formula.tokensLeft() - tokensReserved;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(298)

[33mWarning[0m for UnhandledException in contract 'ParticipantInvestRestrictions':
    |        
    |        if (tokensReserved + tokens > formula.tokensLeft()) {
  > |            tokens = formula.tokensLeft() - tokensReserved;
    |        }
    |        tokensReserved += tokens;
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ParticipantInvestRestrictions':
    |                return true;
    |            } else {
  > |                var (tokens, excess) = formula.howManyTokensForEther(amount);
    |                if (tokensLeft >= tokensReserved + tokens) {
    |                    return investors[investor] || hasFreePlaces();
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ParticipantInvestRestrictions':
    |        uint256 tokens;
    |        uint256 excess;
  > |        (tokens, excess) = formula.howManyTokensForEther(weiAmount);
    |        
    |        if (tokensReserved + tokens > formula.tokensLeft()) {
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ParticipantInvestRestrictions':
    |        (tokens, excess) = formula.howManyTokensForEther(weiAmount);
    |        
  > |        if (tokensReserved + tokens > formula.tokensLeft()) {
    |            tokens = formula.tokensLeft() - tokensReserved;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(298)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ParticipantInvestRestrictions':
    |        
    |        if (tokensReserved + tokens > formula.tokensLeft()) {
  > |            tokens = formula.tokensLeft() - tokensReserved;
    |        }
    |        tokensReserved += tokens;
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'ParticipantInvestRestrictions':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'ParticipantInvestRestrictions':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'ParticipantInvestRestrictions':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'ParticipantInvestRestrictions':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb7f78e6016cd45a448d3703ab1b4f5b5e5d41e69.sol(74)


