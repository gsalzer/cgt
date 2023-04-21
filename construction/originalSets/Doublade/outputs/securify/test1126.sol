Processing contract: /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol:NETCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol:NeuralTradeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(78)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | */
    |
  > |contract BurnableToken is StandardToken, Owned {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value > 0);
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(189)

[33mWarning[0m for LockedEther in contract 'NeuralTradeToken':
    |}
    |
  > |contract NeuralTradeToken is BurnableToken {
    |
    |    string public constant name = "Neural Trade Token";
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'NeuralTradeToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'NeuralTradeToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'NeuralTradeToken':
    |  */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'NeuralTradeToken':
    |  */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'NeuralTradeToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'NeuralTradeToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'NeuralTradeToken':
    |    require(_value > 0);
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'NeuralTradeToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(189)

[33mWarning[0m for LockedEther in contract 'Owned':
    | * @title Owned
    | */
  > |contract Owned {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    | */
    |contract Owned {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(189)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(33)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Implementation of the basic standard token.
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x47171fb5b163df7df68942eb41ee19e4eea65a02.sol(157)


