Processing contract: /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol:ADSToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ADSToken':
    |
    | 
  > |contract ADSToken is StandardToken, BurnableToken {
    |
    |  string public constant name = "Adsertor";
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(293)

[33mWarning[0m for UnhandledException in contract 'ADSToken':
    |   */
    | function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return BasicToken(tokenAddress).transfer(owner, tokens);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(223)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ADSToken':
    |   */
    | function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return BasicToken(tokenAddress).transfer(owner, tokens);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ADSToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ADSToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ADSToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ADSToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'ADSToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ADSToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'ADSToken':
    |   */
    | function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'ADSToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'ADSToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
    |    emit Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(286)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic, Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(84)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(burner, _value);
    |    emit Transfer(burner, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(84)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(84)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(165)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |   */
    | function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return BasicToken(tokenAddress).transfer(owner, tokens);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(223)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |   */
    | function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
  > |        return BasicToken(tokenAddress).transfer(owner, tokens);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    | function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc451228f83af369e053859a1fafce191e752005c.sol(194)


