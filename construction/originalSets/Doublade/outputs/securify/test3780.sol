Processing contract: /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol:ERC20AsmFn
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol:FUTC1
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(177)

[33mWarning[0m for LockedEther in contract 'ERC20AsmFn':
    |pragma solidity ^0.4.24;
    |
  > |library ERC20AsmFn {
    |
    |    function isContract(address addr) internal {
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(21)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(88)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(326)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xf880d3c6dcda42a7b2f6640703c5748557865b35.sol(328)


