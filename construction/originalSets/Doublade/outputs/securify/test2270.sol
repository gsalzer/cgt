Processing contract: /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol:SAUR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol:Sale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(66)

[33mWarning[0m for LockedEther in contract 'SAUR':
    |}
    |
  > |contract SAUR is StandardToken {
    |  string public constant name = "Cardosaur Stake";
    |  string public constant symbol = "SAUR";
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'SAUR':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'SAUR':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'SAUR':
    |    require(_value <= balances[_from]);
    |    require(_value <= allowed[_from][msg.sender]);
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'SAUR':
    |    require(_value <= allowed[_from][msg.sender]);
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'SAUR':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'SAUR':
    |   */
    |  function approve(address _spender, uint256 _value) public notFrozen returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'SAUR':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public notFrozen returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'SAUR':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'SAUR':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(143)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
  > |library SafeMath {    
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(2)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[_from]);
    |    require(_value <= allowed[_from][msg.sender]);
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public notFrozen returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public notFrozen returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x93ada935f8fea45c7ac043ecb6a3c61458d91c2f.sol(143)


