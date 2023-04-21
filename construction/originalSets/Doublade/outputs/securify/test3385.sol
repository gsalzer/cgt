Processing contract: /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol:ABChainTestToken2
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol:MigrationAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ABChainTestToken2':
    |}
    |
  > |contract ABChainTestToken2 is StandardToken {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(207)

[33mWarning[0m for UnhandledException in contract 'ABChainTestToken2':
    |        require(_value > 0);
    |        burn(_value);
  > |        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
    |        Migrate(msg.sender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(234)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ABChainTestToken2':
    |        require(_value > 0);
    |        burn(_value);
  > |        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
    |        Migrate(msg.sender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'ABChainTestToken2':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'ABChainTestToken2':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'ABChainTestToken2':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'ABChainTestToken2':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'ABChainTestToken2':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'ABChainTestToken2':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'ABChainTestToken2':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    burnedCount = burnedCount.add(_value);
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'ABChainTestToken2':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    burnedAfterSaleCount = burnedAfterSaleCount.add(_value);
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'ABChainTestToken2':
    |    function setMigrationAgent(address _agent) {
    |        require(msg.sender == contractOwner);
  > |        migrationAgent = _agent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(240)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(80)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(19)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xde3163c4eb7ba082bcdabb301fef98bfcdcdf31d.sol(195)


