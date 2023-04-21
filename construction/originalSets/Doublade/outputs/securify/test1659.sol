Processing contract: /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol:OwnableToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol:PlayZoneToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(90)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken, OwnableToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |    Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(153)

[33mWarning[0m for LockedEther in contract 'OwnableToken':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract OwnableToken {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'OwnableToken':
    | */
    |contract OwnableToken {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'OwnableToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(153)

[33mWarning[0m for LockedEther in contract 'PlayZoneToken':
    |}
    |
  > |contract PlayZoneToken is OwnableToken, BurnableToken, StandardToken {
    |	string public name;
    |	string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |    Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |
    |	function unpause() public onlyOwner {
  > |		paused = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |
    |	function pause() public onlyOwner {
  > |		paused = true;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |
    |	function addToWhitelist(address addr) public onlyOwner {
  > |		whitelist[addr] = true;
    |	}
    |    
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'PlayZoneToken':
    |    
    |	function removeFromWhitelist(address addr) public onlyOwner {
  > |		whitelist[addr] = false;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(313)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x69ba94a6aa8a021248d0975c0981a0e4123b10ad.sol(270)


