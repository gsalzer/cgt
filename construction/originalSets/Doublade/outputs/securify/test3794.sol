Processing contract: /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol:BaseToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol:CappedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol:ZitKOIN
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BaseToken':
    |// File: contracts\token\BaseToken.sol
    |
  > |contract BaseToken is ERC20Interface {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'BaseToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(233)

[33mWarning[0m for LockedEther in contract 'CappedToken':
    |// File: contracts\token\CappedToken.sol
    |
  > |contract CappedToken is MintableToken {
    |
    |  uint256 public cap;
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    // SafeMath.sub will throw if there is not enough balance
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(_to != address(0));
    |
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(282)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is BaseToken, Ownable {
    |
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(282)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(38)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(49)

[33mWarning[0m for LockedEther in contract 'ZitKOIN':
    |// File: contracts\ZitKOIN.sol
    |
  > |contract ZitKOIN is CappedToken {
    |  string public name = 'ZitKO.IN';
    |  string public symbol = 'XZT';
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(310)

[33mWarning[0m for UnhandledException in contract 'ZitKOIN':
    |  // @dev Recover any mistakenly sent ERC20 tokens to the Token address
    |  function recoverERC20Tokens(address _erc20, uint256 _amount) public onlyOwner {
  > |    ERC20Interface(_erc20).transfer(msg.sender, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZitKOIN':
    |  // @dev Recover any mistakenly sent ERC20 tokens to the Token address
    |  function recoverERC20Tokens(address _erc20, uint256 _amount) public onlyOwner {
  > |    ERC20Interface(_erc20).transfer(msg.sender, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |
    |    // SafeMath.sub will throw if there is not enough balance
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |    // SafeMath.sub will throw if there is not enough balance
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |    require(_spender != address(0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |   */
    |  function increaseApproval(address _spender, uint256 _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |    require(_to != address(0));
    |
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'ZitKOIN':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9b8986790f34d5147bf831d0bbc739986b36dd6.sol(282)


