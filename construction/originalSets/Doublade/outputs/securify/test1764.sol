Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:Authorizable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:BurnToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:ERC223TokenCompatible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:OriginToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:StartToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:Startable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Authorizable':
    | * functions, this simplifies the implementation of "multiple user permissions".
    | */
  > |contract Authorizable is Ownable {
    |  mapping(address => bool) public authorized;
    |  
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    | */
    |contract Authorizable is Ownable {
  > |  mapping(address => bool) public authorized;
    |  
    |  event AuthorizationSet(address indexed addressAuthorized, bool indexed authorization);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'Authorizable':
    |   * @param addressAuthorized The address to change authorization.
    |   */
  > |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
    |    authorized[addressAuthorized] = authorization;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Authorizable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Authorizable':
    |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
  > |    authorized[addressAuthorized] = authorization;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(104)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(154)

[33mWarning[0m for LockedEther in contract 'BurnToken':
    |}
    |
  > |contract BurnToken is StandardToken {
    |
    |    event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[_sender] = balances[_sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_burner] = balances[_burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(_burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |
    |        balances[_burner] = balances[_burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(_burner, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnToken':
    |		require(_value <= allowed[_from][msg.sender]); // check if it has the budget allowed
    |		burnFunction(_from, _value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(404)

[33mWarning[0m for LockedEther in contract 'ERC223TokenCompatible':
    |}
    |
  > |contract ERC223TokenCompatible is BasicToken {
    |  using SafeMath for uint256;
    |  
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(177)

[31mViolation[0m for UnhandledException in contract 'ERC223TokenCompatible':
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  > |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
    |		} 
    |		Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC223TokenCompatible':
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  > |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
    |		} 
    |		Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223TokenCompatible':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223TokenCompatible':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[_sender] = balances[_sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223TokenCompatible':
    |		require(_value <= balances[msg.sender]);
    |		// SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223TokenCompatible':
    |		// SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
    |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(189)

[33mWarning[0m for LockedEther in contract 'HumanStandardToken':
    |}
    |
  > |contract HumanStandardToken is StandardToken, StartToken {
    |    /* Approves and then calls the receiving contract */
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(358)

[31mViolation[0m for UnhandledException in contract 'HumanStandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  > |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
    |		} 
    |		Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(191)

[33mWarning[0m for UnhandledException in contract 'HumanStandardToken':
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        approve(_spender, _value);
  > |        require(_spender.call(bytes4(keccak256("receiveApproval(address,uint256,bytes)")), msg.sender, _value, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  > |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
    |		} 
    |		Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        approve(_spender, _value);
  > |        require(_spender.call(bytes4(keccak256("receiveApproval(address,uint256,bytes)")), msg.sender, _value, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[_sender] = balances[_sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |		require(_value <= balances[msg.sender]);
    |		// SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |		// SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
    |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
  > |    authorized[addressAuthorized] = authorization;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |   */
    |  function start() onlyOwner public {
  > |    started = true;
    |    Start();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(318)

[33mWarning[0m for LockedEther in contract 'OriginToken':
    |}
    |
  > |contract OriginToken is Authorizable, BasicToken, BurnToken {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(409)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[_sender] = balances[_sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_burner] = balances[_burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(_burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |
    |        balances[_burner] = balances[_burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(_burner, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |		require(_value <= allowed[_from][msg.sender]); // check if it has the budget allowed
    |		burnFunction(_from, _value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'OriginToken':
    |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
  > |    authorized[addressAuthorized] = authorization;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(104)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(288)

[33mWarning[0m for LockedEther in contract 'StartToken':
    | **/
    |
  > |contract StartToken is Startable, ERC223TokenCompatible, StandardToken {
    |
    |  function transfer(address _to, uint256 _value) public whenStarted returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(329)

[31mViolation[0m for UnhandledException in contract 'StartToken':
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  > |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
    |		} 
    |		Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StartToken':
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  > |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
    |		} 
    |		Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[_sender] = balances[_sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |		require(_value <= balances[msg.sender]);
    |		// SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |		// SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
    |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
  > |    authorized[addressAuthorized] = authorization;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StartToken':
    |   */
    |  function start() onlyOwner public {
  > |    started = true;
    |    Start();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(318)

[33mWarning[0m for LockedEther in contract 'Startable':
    | * @dev Base contract which allows owner to implement an start mechanism without ever being stopped more.
    | */
  > |contract Startable is Ownable, Authorizable {
    |  event Start();
    |
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'Startable':
    | */
    |contract Authorizable is Ownable {
  > |  mapping(address => bool) public authorized;
    |  
    |  event AuthorizationSet(address indexed addressAuthorized, bool indexed authorization);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'Startable':
    |   * @param addressAuthorized The address to change authorization.
    |   */
  > |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
    |    authorized[addressAuthorized] = authorization;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Startable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Startable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Startable':
    |  event Start();
    |
  > |  bool public started = false;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(304)

[33mWarning[0m for MissingInputValidation in contract 'Startable':
    |   * @dev called by the owner to start, go to normal state
    |   */
  > |  function start() onlyOwner public {
    |    started = true;
    |    Start();
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'Startable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Startable':
    |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
  > |    authorized[addressAuthorized] = authorization;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Startable':
    |   */
    |  function start() onlyOwner public {
  > |    started = true;
    |    Start();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(318)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is ERC223TokenCompatible, StandardToken, StartToken, HumanStandardToken, BurnToken, OriginToken {
    |    uint8 public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(427)

[31mViolation[0m for UnhandledException in contract 'Token':
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  > |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
    |		} 
    |		Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(191)

[33mWarning[0m for UnhandledException in contract 'Token':
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        approve(_spender, _value);
  > |        require(_spender.call(bytes4(keccak256("receiveApproval(address,uint256,bytes)")), msg.sender, _value, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(362)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  > |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
    |		} 
    |		Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        approve(_spender, _value);
  > |        require(_spender.call(bytes4(keccak256("receiveApproval(address,uint256,bytes)")), msg.sender, _value, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |  function setAuthorized(address addressAuthorized, bool authorization) onlyOwner public {
    |    AuthorizationSet(addressAuthorized, authorization);
  > |    authorized[addressAuthorized] = authorization;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[_sender] = balances[_sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[_sender] = balances[_sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(_sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |		require(_value <= balances[msg.sender]);
    |		// SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |		// SafeMath.sub will throw if there is not enough balance.
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |		if( isContract(_to) ) {
    |			_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |   */
    |  function start() onlyOwner public {
  > |    started = true;
    |    Start();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |        balances[_burner] = balances[_burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(_burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(382)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |        balances[_burner] = balances[_burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(_burner, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |		require(_value <= allowed[_from][msg.sender]); // check if it has the budget allowed
    |		burnFunction(_from, _value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		return true;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x7025bab2ec90410de37f488d1298204cd4d6b29d.sol(404)


