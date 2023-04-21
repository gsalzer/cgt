Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:BCSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:ERC20StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:IBurnableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:Manageable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:ReturnTokenAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:ReturnableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:ValueToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol:ValueTokenAgent
[33mWarning[0m for DAO in contract 'BCSToken':
    |        if (address(valueAgent) != 0x0) {
    |            //first execute agent method
  > |            valueAgent.tokenIsBeingTransferred(_from, _to, _value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(280)

[33mWarning[0m for DAO in contract 'BCSToken':
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  > |            ReturnTokenAgent(_to).returnToken(_from, _value);                
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(385)

[33mWarning[0m for LockedEther in contract 'BCSToken':
    |
    |/**@dev bcshop.io crowdsale token */
  > |contract BCSToken is ValueToken, ReturnableToken, IBurnableToken {
    |
    |    /**@dev Specifies allowed address that always can transfer tokens in case of global transfer lock */
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(403)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        balance = balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool) {
    |        require(_to != address(0));
    |        
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(184)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(195)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        remaining = allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Holders of reserved tokens */
  > |    mapping (address => bool) public reserved;
    |
    |    /**@dev Reserved token amount */
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(264)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Sets new value agent */
  > |    function setValueAgent(ValueTokenAgent newAgent) managerOnly {
    |        valueAgent = newAgent;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(272)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Sets specific address to be reserved */
  > |    function setReserved(address holder, bool state) managerOnly {        
    |
    |        uint256 holderBalance = balanceOf(holder);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(303)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev List of return agents */
  > |    mapping (address => bool) public returnAgents;
    |
    |    function ReturnableToken() {}    
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(368)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |    
    |    /**@dev Sets new return agent */
  > |    function setReturnAgent(ReturnTokenAgent agent) managerOnly {
    |        returnAgents[address(agent)] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(373)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Removes return agent from list */
  > |    function removeReturnAgent(ReturnTokenAgent agent) managerOnly {
    |        returnAgents[address(agent)] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(378)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Specifies allowed address that always can transfer tokens in case of global transfer lock */
  > |    mapping (address => bool) public transferAllowed;
    |    /**@dev Specifies timestamp when specific token holder can transfer funds */    
    |    mapping (address => uint256) public transferLockUntil; 
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(406)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |    mapping (address => bool) public transferAllowed;
    |    /**@dev Specifies timestamp when specific token holder can transfer funds */    
  > |    mapping (address => uint256) public transferLockUntil; 
    |    /**@dev True if transfer is locked for all holders, false otherwise */
    |    bool public transferLocked;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(408)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Returns true if given address can transfer tokens */
  > |    function canTransfer(address holder) constant returns (bool) {
    |        if(transferLocked) {
    |            return transferAllowed[holder];
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(435)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Lock transfer for a given holder for a given amount of days */
  > |    function lockTransferFor(address holder, uint256 daysFromNow) managerOnly {
    |        transferLockUntil[holder] = daysFromNow * 1 days + now;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(445)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Sets transfer allowance for specific holder */
  > |    function allowTransferFor(address holder, bool state) managerOnly {
    |        transferAllowed[holder] = state;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(450)

[31mViolation[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Locks or allows transfer for all holders, for emergency reasons*/
  > |    function setLockedState(bool state) managerOnly {
    |        transferLocked = state;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(455)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  > |    function safeAdd(uint256 a, uint256 b) internal returns (uint256) {        
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**dev Returns the difference of a and b. Throws an exception if a is less than b*/
  > |    function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |/**@dev Standard ERC20 compliant token implementation */
    |contract ERC20StandardToken is IERC20Token, SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    //tokens already issued
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |    // 
    |
  > |    function totalSupply() constant returns (uint total) {
    |        total = tokensIssued;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |    //
    |    /**@dev Gets real token amount in the smallest token units */
  > |    function getRealTokenAmount(uint256 tokens) constant returns (uint256) {
    |        return tokens * (uint256(10) ** decimals);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |    //    
    |    
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Reserved token amount */
  > |    uint256 public reservedAmount;
    |
    |    function ValueToken() {}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(267)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |    }
    |
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |
    |        if (address(valueAgent) != 0x0) {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev Returns a token amount that is accounted in the process of dividend calculation */
  > |    function getValuableTokenAmount() constant returns (uint256) {
    |        return totalSupply() - reservedAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(298)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |    }
    |
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(382)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |    mapping (address => uint256) public transferLockUntil; 
    |    /**@dev True if transfer is locked for all holders, false otherwise */
  > |    bool public transferLocked;
    |
    |    event Burn(address sender, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(410)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |
    |    /**@dev ERC20StandatdToken override */
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        require(canTransfer(_from));
    |        super.doTransfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(429)

[33mWarning[0m for MissingInputValidation in contract 'BCSToken':
    |    }
    |    
  > |    function burn(uint256 _value) managerOnly {        
    |        require (balances[msg.sender] >= _value);            // Check if the sender has enough
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(459)

[33mWarning[0m for UnhandledException in contract 'BCSToken':
    |        if (address(valueAgent) != 0x0) {
    |            //first execute agent method
  > |            valueAgent.tokenIsBeingTransferred(_from, _to, _value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(280)

[33mWarning[0m for UnhandledException in contract 'BCSToken':
    |        uint256 holderBalance = balanceOf(holder);
    |        if (address(valueAgent) != 0x0) {            
  > |            valueAgent.tokenChanged(holder, holderBalance);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(307)

[33mWarning[0m for UnhandledException in contract 'BCSToken':
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  > |            ReturnTokenAgent(_to).returnToken(_from, _value);                
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(385)

[33mWarning[0m for UnhandledException in contract 'BCSToken':
    |
    |        if (address(valueAgent) != 0x0) {            
  > |            valueAgent.tokenChanged(msg.sender, _value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(463)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSToken':
    |        uint256 holderBalance = balanceOf(holder);
    |        if (address(valueAgent) != 0x0) {            
  > |            valueAgent.tokenChanged(holder, holderBalance);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BCSToken':
    |
    |        if (address(valueAgent) != 0x0) {            
  > |            valueAgent.tokenChanged(msg.sender, _value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(463)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSToken':
    |        
    |        // Check for allowance is not needed because sub(_allowance, _value) will throw if this condition is not met
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);        
    |        // safeSub inside doTransfer will throw if there is not enough balance.
    |        doTransfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSToken':
    |    
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSToken':
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSToken':
    |        //first check if addresses are reserved and adjust reserved amount accordingly
    |        if (reserved[_from]) {
  > |            reservedAmount = safeSub(reservedAmount, _value);
    |            //reservedAmount -= _value;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSToken':
    |        } 
    |        if (reserved[_to]) {
  > |            reservedAmount = safeAdd(reservedAmount, _value);
    |            //reservedAmount += _value;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSToken':
    |        if (state) {
    |            //reservedAmount += holderBalance;
  > |            reservedAmount = safeAdd(reservedAmount, holderBalance);
    |        } else {
    |            //reservedAmount -= holderBalance;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSToken':
    |        } else {
    |            //reservedAmount -= holderBalance;
  > |            reservedAmount = safeSub(reservedAmount, holderBalance);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'BCSToken':
    |        }
    |
  > |        reserved[holder] = state;
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSToken':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSToken':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSToken':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'BCSToken':
    |        }
    |
  > |        balances[msg.sender] -= _value;                      // Subtract from the sender
    |        tokensIssued -= _value;                              // Updates totalSupply        
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(466)

[33mWarning[0m for LockedEther in contract 'ERC20StandardToken':
    |
    |/**@dev Standard ERC20 compliant token implementation */
  > |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        balance = balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool) {
    |        require(_to != address(0));
    |        
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(184)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(195)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        remaining = allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  > |    function safeAdd(uint256 a, uint256 b) internal returns (uint256) {        
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |
    |    /**dev Returns the difference of a and b. Throws an exception if a is less than b*/
  > |    function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |/**@dev Standard ERC20 compliant token implementation */
    |contract ERC20StandardToken is IERC20Token, SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    //tokens already issued
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    // 
    |
  > |    function totalSupply() constant returns (uint total) {
    |        total = tokensIssued;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    //
    |    /**@dev Gets real token amount in the smallest token units */
  > |    function getRealTokenAmount(uint256 tokens) constant returns (uint256) {
    |        return tokens * (uint256(10) ** decimals);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    //    
    |    
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |        
    |        // Check for allowance is not needed because sub(_allowance, _value) will throw if this condition is not met
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);        
    |        // safeSub inside doTransfer will throw if there is not enough balance.
    |        doTransfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |    
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(196)

[33mWarning[0m for LockedEther in contract 'Manageable':
    |///A token that have an owner and a list of managers that can perform some operations
    |///Owner is always a manager too
  > |contract Manageable is Owned {
    |
    |    event ManagerSet(address manager, bool state);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'Manageable':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(66)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;        
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(33)

[33mWarning[0m for DAO in contract 'ReturnableToken':
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  > |            ReturnTokenAgent(_to).returnToken(_from, _value);                
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(385)

[33mWarning[0m for LockedEther in contract 'ReturnableToken':
    |
    |///Token that when sent to specified contract (returnAgent) invokes additional actions
  > |contract ReturnableToken is Manageable, ERC20StandardToken {
    |
    |    /**@dev List of return agents */
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(365)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        balance = balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool) {
    |        require(_to != address(0));
    |        
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(184)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(195)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        remaining = allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**@dev List of return agents */
  > |    mapping (address => bool) public returnAgents;
    |
    |    function ReturnableToken() {}    
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(368)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |    
    |    /**@dev Sets new return agent */
  > |    function setReturnAgent(ReturnTokenAgent agent) managerOnly {
    |        returnAgents[address(agent)] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(373)

[31mViolation[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**@dev Removes return agent from list */
  > |    function removeReturnAgent(ReturnTokenAgent agent) managerOnly {
    |        returnAgents[address(agent)] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(378)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  > |    function safeAdd(uint256 a, uint256 b) internal returns (uint256) {        
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |
    |    /**dev Returns the difference of a and b. Throws an exception if a is less than b*/
  > |    function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |/**@dev Standard ERC20 compliant token implementation */
    |contract ERC20StandardToken is IERC20Token, SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    //tokens already issued
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    // 
    |
  > |    function totalSupply() constant returns (uint total) {
    |        total = tokensIssued;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    //
    |    /**@dev Gets real token amount in the smallest token units */
  > |    function getRealTokenAmount(uint256 tokens) constant returns (uint256) {
    |        return tokens * (uint256(10) ** decimals);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    //    
    |    
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'ReturnableToken':
    |    }
    |
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(382)

[33mWarning[0m for UnhandledException in contract 'ReturnableToken':
    |        super.doTransfer(_from, _to, _value);
    |        if (returnAgents[_to]) {
  > |            ReturnTokenAgent(_to).returnToken(_from, _value);                
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(385)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |        
    |        // Check for allowance is not needed because sub(_allowance, _value) will throw if this condition is not met
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);        
    |        // safeSub inside doTransfer will throw if there is not enough balance.
    |        doTransfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'ReturnableToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(196)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/**dev Utility methods for overflow-proof arithmetic operations 
    |*/
  > |contract SafeMath {
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(115)

[33mWarning[0m for DAO in contract 'ValueToken':
    |        if (address(valueAgent) != 0x0) {
    |            //first execute agent method
  > |            valueAgent.tokenIsBeingTransferred(_from, _to, _value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(280)

[33mWarning[0m for LockedEther in contract 'ValueToken':
    |/**@dev Can be relied on to distribute values according to its balances 
    | Can set some reserve addreses whose tokens don't take part in dividend distribution */
  > |contract ValueToken is Manageable, ERC20StandardToken {
    |    
    |    /**@dev Watches transfer operation of this token */
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(258)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        balance = balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) returns (bool) {
    |        require(_to != address(0));
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool) {
    |        require(_to != address(0));
    |        
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(184)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(195)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        remaining = allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    /**@dev Holders of reserved tokens */
  > |    mapping (address => bool) public reserved;
    |
    |    /**@dev Reserved token amount */
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(264)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    /**@dev Sets new value agent */
  > |    function setValueAgent(ValueTokenAgent newAgent) managerOnly {
    |        valueAgent = newAgent;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(272)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    /**@dev Sets specific address to be reserved */
  > |    function setReserved(address holder, bool state) managerOnly {        
    |
    |        uint256 holderBalance = balanceOf(holder);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(303)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  > |    function safeAdd(uint256 a, uint256 b) internal returns (uint256) {        
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    /**dev Returns the difference of a and b. Throws an exception if a is less than b*/
  > |    function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |/**@dev Standard ERC20 compliant token implementation */
    |contract ERC20StandardToken is IERC20Token, SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    //tokens already issued
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    // 
    |
  > |    function totalSupply() constant returns (uint total) {
    |        total = tokensIssued;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    //
    |    /**@dev Gets real token amount in the smallest token units */
  > |    function getRealTokenAmount(uint256 tokens) constant returns (uint256) {
    |        return tokens * (uint256(10) ** decimals);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    //    
    |    
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    /**@dev Reserved token amount */
  > |    uint256 public reservedAmount;
    |
    |    function ValueToken() {}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(267)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |
    |        if (address(valueAgent) != 0x0) {
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    /**@dev Returns a token amount that is accounted in the process of dividend calculation */
  > |    function getValuableTokenAmount() constant returns (uint256) {
    |        return totalSupply() - reservedAmount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(298)

[33mWarning[0m for UnhandledException in contract 'ValueToken':
    |        if (address(valueAgent) != 0x0) {
    |            //first execute agent method
  > |            valueAgent.tokenIsBeingTransferred(_from, _to, _value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(280)

[33mWarning[0m for UnhandledException in contract 'ValueToken':
    |        uint256 holderBalance = balanceOf(holder);
    |        if (address(valueAgent) != 0x0) {            
  > |            valueAgent.tokenChanged(holder, holderBalance);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ValueToken':
    |        if (address(valueAgent) != 0x0) {
    |            //first execute agent method
  > |            valueAgent.tokenIsBeingTransferred(_from, _to, _value);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(280)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ValueToken':
    |        uint256 holderBalance = balanceOf(holder);
    |        if (address(valueAgent) != 0x0) {            
  > |            valueAgent.tokenChanged(holder, holderBalance);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(307)

[31mViolation[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'ValueToken':
    |        
    |        // Check for allowance is not needed because sub(_allowance, _value) will throw if this condition is not met
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);        
    |        // safeSub inside doTransfer will throw if there is not enough balance.
    |        doTransfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'ValueToken':
    |    
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'ValueToken':
    |        //first check if addresses are reserved and adjust reserved amount accordingly
    |        if (reserved[_from]) {
  > |            reservedAmount = safeSub(reservedAmount, _value);
    |            //reservedAmount -= _value;
    |        } 
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'ValueToken':
    |        } 
    |        if (reserved[_to]) {
  > |            reservedAmount = safeAdd(reservedAmount, _value);
    |            //reservedAmount += _value;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'ValueToken':
    |        if (state) {
    |            //reservedAmount += holderBalance;
  > |            reservedAmount = safeAdd(reservedAmount, holderBalance);
    |        } else {
    |            //reservedAmount -= holderBalance;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'ValueToken':
    |        } else {
    |            //reservedAmount -= holderBalance;
  > |            reservedAmount = safeSub(reservedAmount, holderBalance);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(316)

[31mViolation[0m for UnrestrictedWrite in contract 'ValueToken':
    |        }
    |
  > |        reserved[holder] = state;
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(33)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x98bde3a768401260e7025faf9947ef1b81295519.sol(196)


