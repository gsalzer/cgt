Processing contract: /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol:FCoinToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'FCoinToken':
    |}
    |
  > |contract FCoinToken is StandardToken {
    |    uint public totalSupply = 100*10**26;
    |    uint8 constant public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'FCoinToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'FCoinToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'FCoinToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'FCoinToken':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'FCoinToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'FCoinToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(108)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(4)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |
    |
  > |contract StandardToken is ERC20 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd846f02d8d4f0b13123b5586c7b6249c889a4463.sol(108)


