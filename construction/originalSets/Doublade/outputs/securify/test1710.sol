Processing contract: /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol:ChariotToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol:TokenSale
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
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(78)

[33mWarning[0m for LockedEther in contract 'ChariotToken':
    | * It is meant to be used in a crowdsale contract.
    | */
  > |contract ChariotToken is StandardToken, Ownable {
    |
    |  string public constant name = "Chariot Coin";
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |  function mint(address _to, uint256 _amount) canMint unpauseMint public returns (bool) {
    |    require(msg.sender == saleAgent || msg.sender == owner);
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |    require(msg.sender == saleAgent || msg.sender == owner);
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(this), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |        require(balances[_from] >= _value);// Check if the targeted balance is enough
    |        require(_value <= allowed[_from][msg.sender]);// Check allowance
  > |        balances[_from] = balances[_from].sub(_value); // Subtract from the targeted balance
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); // Subtract from the sender's allowance
    |        totalSupply = totalSupply.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |        require(_value <= allowed[_from][msg.sender]);// Check allowance
    |        balances[_from] = balances[_from].sub(_value); // Subtract from the targeted balance
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); // Subtract from the sender's allowance
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |        balances[_from] = balances[_from].sub(_value); // Subtract from the targeted balance
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value); // Subtract from the sender's allowance
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |  function setSaleAgent(address newSaleAgnet) public {
    |    require(msg.sender == saleAgent || msg.sender == owner);
  > |    saleAgent = newSaleAgnet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |  function pauseMinting(bool _mintingPaused) canMint public returns (bool) {
    |    require((msg.sender == saleAgent || msg.sender == owner));
  > |    mintingPaused = _mintingPaused;
    |    MintPaused(_mintingPaused);
    |    return _mintingPaused;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'ChariotToken':
    |  function finishMinting() canMint public returns (bool) {
    |    require((msg.sender == saleAgent || msg.sender == owner));
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(298)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner{
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(132)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x6cec564ac99f75712a7f20b6ee98e884884b9278.sol(224)


