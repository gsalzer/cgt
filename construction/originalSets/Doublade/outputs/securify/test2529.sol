Processing contract: /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol:ERC20StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol:IERC20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol:ITokenPool
Processing contract: /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol:Manageable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol:TokenPool
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20StandardToken':
    |
    |/**@dev Standard ERC20 compliant token implementation */
  > |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    | 
  > |    function balanceOf(address _owner) constant returns (uint balance) {
    |        balance = balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool) {
    |        require(_to != address(0));
    |        
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        remaining = allowed[_owner][_spender];
    |    }    
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  > |    function safeAdd(uint256 a, uint256 b) internal returns (uint256) {        
    |        uint256 c = a + b;
    |        assert(c >= a);
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |
    |    /**dev Returns the difference of a and b. Throws an exception if a is less than b*/
  > |    function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |        assert(a >= b);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |/**@dev Standard ERC20 compliant token implementation */
    |contract ERC20StandardToken is IERC20Token, SafeMath {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |contract ERC20StandardToken is IERC20Token, SafeMath {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |
    |    //tokens already issued
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    // 
    |
  > |    function totalSupply() constant returns (uint total) {
    |        total = tokensIssued;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    //
    |    /**@dev Gets real token amount in the smallest token units */
  > |    function getRealTokenAmount(uint256 tokens) constant returns (uint256) {
    |        return tokens * (uint256(10) ** decimals);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'ERC20StandardToken':
    |    //    
    |    
  > |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |        
    |        // Check for allowance is not needed because sub(_allowance, _value) will throw if this condition is not met
  > |        allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);        
    |        // safeSub inside doTransfer will throw if there is not enough balance.
    |        doTransfer(_from, _to, _value);        
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |    
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
  > |        balances[_from] = safeSub(balances[_from], _value);
    |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |    function doTransfer(address _from, address _to, uint256 _value) internal {
    |        balances[_from] = safeSub(balances[_from], _value);
  > |        balances[_to] = safeAdd(balances[_to], _value);
    |    }
    |}/*************************************************************************
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(132)

[33mWarning[0m for LockedEther in contract 'Manageable':
    |///A token that have an owner and a list of managers that can perform some operations
    |///Owner is always a manager too
  > |contract Manageable is Owned {
    |
    |    event ManagerSet(address manager, bool state);
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(210)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'Manageable':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'Manageable':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'Manageable':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(234)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;        
    |
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(185)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(201)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |/**dev Utility methods for overflow-proof arithmetic operations 
    |*/
  > |contract SafeMath {
    |
    |    /**dev Returns the sum of a and b. Throws an exception if it exceeds uint256 limits*/
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(51)

[33mWarning[0m for LockedEther in contract 'TokenPool':
    |
    |/**@dev Token pool that manages its tokens by designating trustees */
  > |contract TokenPool is Manageable, ITokenPool {    
    |
    |    function TokenPool(ERC20StandardToken _token) {
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(242)

[31mViolation[0m for MissingInputValidation in contract 'TokenPool':
    |    event ManagerSet(address manager, bool state);
    |
  > |    mapping (address => bool) public managers;
    |
    |    function Manageable() Owned() {
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'TokenPool':
    |    }
    |
  > |    function setManager(address manager, bool state) ownerOnly {
    |        managers[manager] = state;
    |        ManagerSet(manager, state);
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(233)

[31mViolation[0m for MissingInputValidation in contract 'TokenPool':
    |
    |    /**@dev ITokenPool override */
  > |    function setTrustee(address trustee, bool state) managerOnly {
    |        if (state) {
    |            token.approve(trustee, token.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(249)

[31mViolation[0m for MissingInputValidation in contract 'TokenPool':
    |
    |    /**@dev Returns all tokens back to owner */
  > |    function returnTokensTo(address to) managerOnly {
    |        token.transfer(to, token.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(263)

[33mWarning[0m for MissingInputValidation in contract 'TokenPool':
    |
    |    /**@dev Token to be managed */
  > |    ERC20StandardToken public token;
    |
    |    /**@dev Changes trustee state */
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(165)

[33mWarning[0m for MissingInputValidation in contract 'TokenPool':
    |
    |contract Owned {
  > |    address public owner;        
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'TokenPool':
    |
    |    /**@dev allows transferring the contract ownership. */
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
    |        owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'TokenPool':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public ownerOnly {
    |        super.transferOwnership(_newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'TokenPool':
    |
    |    /**@dev ITokenPool override */
  > |    function getTokenAmount() constant returns (uint256 tokens) {
    |        tokens = token.balanceOf(this);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(258)

[33mWarning[0m for UnhandledException in contract 'TokenPool':
    |    function setTrustee(address trustee, bool state) managerOnly {
    |        if (state) {
  > |            token.approve(trustee, token.balanceOf(this));
    |        } else {
    |            token.approve(trustee, 0);
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(251)

[33mWarning[0m for UnhandledException in contract 'TokenPool':
    |            token.approve(trustee, token.balanceOf(this));
    |        } else {
  > |            token.approve(trustee, 0);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(253)

[33mWarning[0m for UnhandledException in contract 'TokenPool':
    |    /**@dev ITokenPool override */
    |    function getTokenAmount() constant returns (uint256 tokens) {
  > |        tokens = token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(259)

[33mWarning[0m for UnhandledException in contract 'TokenPool':
    |    /**@dev Returns all tokens back to owner */
    |    function returnTokensTo(address to) managerOnly {
  > |        token.transfer(to, token.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(264)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenPool':
    |    function setTrustee(address trustee, bool state) managerOnly {
    |        if (state) {
  > |            token.approve(trustee, token.balanceOf(this));
    |        } else {
    |            token.approve(trustee, 0);
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenPool':
    |            token.approve(trustee, token.balanceOf(this));
    |        } else {
  > |            token.approve(trustee, 0);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenPool':
    |    /**@dev ITokenPool override */
    |    function getTokenAmount() constant returns (uint256 tokens) {
  > |        tokens = token.balanceOf(this);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenPool':
    |    /**@dev Returns all tokens back to owner */
    |    function returnTokensTo(address to) managerOnly {
  > |        token.transfer(to, token.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(264)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenPool':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenPool':
    |    function transferOwnership(address _newOwner) public ownerOnly {
    |        require(_newOwner != owner);
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenPool':
    |        super.transferOwnership(_newOwner);
    |
  > |        managers[_newOwner] = true;
    |        managers[msg.sender] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenPool':
    |
    |        managers[_newOwner] = true;
  > |        managers[msg.sender] = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenPool':
    |
    |    function setManager(address manager, bool state) ownerOnly {
  > |        managers[manager] = state;
    |        ManagerSet(manager, state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa5ab0ef3ef3711d8ecfe0a7ba42745cbcfb549cc.sol(234)


