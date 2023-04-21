Processing contract: /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol:MimiCoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    | 
  > |contract BasicToken is ERC20Basic {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    | 
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(51)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    | 
  > |contract BurnableToken is StandardToken {
    | 
    |  function burn(uint _value) public {
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    | 
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    var _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value > 0);
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(115)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    | 
    |  function createTokens() saleIsOn payable {
  > |    multisig.transfer(msg.value);
    |    uint tokens = rate.mul(msg.value).div(1 ether);
    |    uint bonusTokens = 0;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(171)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    | 
  > |contract Crowdsale is Ownable {
    |    
    |  using SafeMath for uint;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(138)

[33mWarning[0m for TODReceiver in contract 'Crowdsale':
    | 
    |  function createTokens() saleIsOn payable {
  > |    multisig.transfer(msg.value);
    |    uint tokens = rate.mul(msg.value).div(1 ether);
    |    uint bonusTokens = 0;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(171)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    | 
    |  function createTokens() saleIsOn payable {
  > |    multisig.transfer(msg.value);
    |    uint tokens = rate.mul(msg.value).div(1 ether);
    |    uint bonusTokens = 0;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(171)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    }
    |    uint tokensWithBonus = tokens.add(bonusTokens);
  > |    token.transfer(msg.sender, tokensWithBonus);
    |    uint restrictedTokens = tokens.mul(restrictedPercent).div(100 - restrictedPercent);
    |    token.transfer(restricted, restrictedTokens);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(182)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    token.transfer(msg.sender, tokensWithBonus);
    |    uint restrictedTokens = tokens.mul(restrictedPercent).div(100 - restrictedPercent);
  > |    token.transfer(restricted, restrictedTokens);
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(184)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    }
    |    uint tokensWithBonus = tokens.add(bonusTokens);
  > |    token.transfer(msg.sender, tokensWithBonus);
    |    uint restrictedTokens = tokens.mul(restrictedPercent).div(100 - restrictedPercent);
    |    token.transfer(restricted, restrictedTokens);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(182)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    token.transfer(msg.sender, tokensWithBonus);
    |    uint restrictedTokens = tokens.mul(restrictedPercent).div(100 - restrictedPercent);
  > |    token.transfer(restricted, restrictedTokens);
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(105)

[33mWarning[0m for LockedEther in contract 'MimiCoinToken':
    |}
    | 
  > |contract MimiCoinToken is BurnableToken {
    |    
    |  string public constant name = "Mimimi Coin Token";
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MimiCoinToken':
    | 
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'MimiCoinToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'MimiCoinToken':
    |    var _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'MimiCoinToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'MimiCoinToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'MimiCoinToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'MimiCoinToken':
    |    require(_value > 0);
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MimiCoinToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(115)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    | 
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    | 
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    | 
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(105)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | 
    |
  > |library SafeMath {
    |    
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(19)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    | 
  > |contract StandardToken is ERC20, BasicToken {
    | 
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    | 
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa596ce74161a031d951d5a3acbb38bede00e7d92.sol(80)


