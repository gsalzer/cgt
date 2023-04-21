Processing contract: /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol:AnterosToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AnterosToken':
    |*/
    |
  > |contract AnterosToken is StandardToken {
    |
    |string public constant name = "AnterosToken";
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(389)

[33mWarning[0m for UnrestrictedWrite in contract 'AnterosToken':
    |// SafeMath.sub will throw if there is not enough balance.
    |
  > |balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'AnterosToken':
    |balances[_to] = balances[_to].add(_value);
    |
  > |allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'AnterosToken':
    |function approve(address _spender, uint256 _value) public returns (bool) {
    |
  > |allowed[msg.sender][_spender] = _value;
    |
    |Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'AnterosToken':
    |function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |
  > |allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |
    |Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'AnterosToken':
    |if (_subtractedValue > oldValue) {
    |
  > |allowed[msg.sender][_spender] = 0;
    |
    |} else {
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'AnterosToken':
    |} else {
    |
  > |allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(365)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    |*/
    |
  > |contract BasicToken is ERC20Basic {
    |
    |using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |// SafeMath.sub will throw if there is not enough balance.
    |
  > |balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(179)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |*/
    |
  > |library SafeMath {
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(17)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |*/
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |// SafeMath.sub will throw if there is not enough balance.
    |
  > |balances[msg.sender] = balances[msg.sender].sub(_value);
    |
    |balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |balances[_to] = balances[_to].add(_value);
    |
  > |allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |
    |Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |function approve(address _spender, uint256 _value) public returns (bool) {
    |
  > |allowed[msg.sender][_spender] = _value;
    |
    |Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    |
  > |allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |
    |Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |if (_subtractedValue > oldValue) {
    |
  > |allowed[msg.sender][_spender] = 0;
    |
    |} else {
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |} else {
    |
  > |allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |
    |}
  at /home/jiaming/mavs_srcs/contract@0x2dcea121a1d3f0075b9927a2ef7c3ce8a953bc30.sol(365)


