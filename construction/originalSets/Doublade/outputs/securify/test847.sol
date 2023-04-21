Processing contract: /home/jiaming/mavs_srcs/contract@0x3675357f253ee776012f7bf398151d1d683336fb.sol:GFOT
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3675357f253ee776012f7bf398151d1d683336fb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'GFOT':
    | * https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract GFOT  {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x3675357f253ee776012f7bf398151d1d683336fb.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'GFOT':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3675357f253ee776012f7bf398151d1d683336fb.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'GFOT':
    |        //Replace the if with this one instead.
    |        if (balances[msg.sender] >= _value && balances[_to].add(_value) > balances[_to]) {
  > |            balances[msg.sender] = balances[msg.sender].sub(_value);
    |            balances[_to] = balances[_to].add(_value);
    |            emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3675357f253ee776012f7bf398151d1d683336fb.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'GFOT':
    |            balances[_to] = _value.add(balances[_to]);
    |            balances[_from] = balances[_from].sub(_value);
  > |            allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |            emit Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3675357f253ee776012f7bf398151d1d683336fb.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'GFOT':
    |     */
    |    function changeOwner(address _newowner) public ownerOnly returns (bool success) {
  > |        owner = _newowner;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3675357f253ee776012f7bf398151d1d683336fb.sol(142)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3675357f253ee776012f7bf398151d1d683336fb.sol(3)


