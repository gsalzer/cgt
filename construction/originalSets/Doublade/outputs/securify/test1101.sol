Processing contract: /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol:NARCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(105)

[33mWarning[0m for LockedEther in contract 'NARCoin':
    |
    |
  > |contract NARCoin is StandardToken, Ownable {
    |  string public constant name = "New Art Coin";
    |  string public constant symbol = "NAR";
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |  function sendBonus(address receiver, uint256 bonus) public onlyBackend {
    |    Transfer(companyWallet, receiver, bonus);
  > |    balances[companyWallet] = balances[companyWallet].sub(bonus);
    |    balances[receiver] = balances[receiver].add(bonus);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |    Transfer(companyWallet, receiver, bonus);
    |    balances[companyWallet] = balances[companyWallet].sub(bonus);
  > |    balances[receiver] = balances[receiver].add(bonus);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |  function setBackendWallet(address _backendWallet) public onlyOwner {
    |    require(backendWallet != address(0));
  > |    backendWallet = _backendWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |    require(totalSupply_ + tokens <= maxSupply);
    |
  > |    balances[receiver] += tokens;
    |    totalSupply_ += tokens;
    |    Transfer(address(0x0), receiver, tokens);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'NARCoin':
    |
    |    balances[receiver] += tokens;
  > |    totalSupply_ += tokens;
    |    Transfer(address(0x0), receiver, tokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(324)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(234)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(263)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(35)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x45038b67b1b55d7e3e142eec49ce6bd2254c4e57.sol(220)


