Processing contract: /home/jiaming/mavs_srcs/contract@0xf1488f98b930dc7b9eaa47874b3536944a47654b.sol:Paymec
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf1488f98b930dc7b9eaa47874b3536944a47654b.sol:SafeMathMod
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Paymec':
    |}
    |
  > |contract Paymec {//is inherently ERC20
    |    using SafeMathMod for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xf1488f98b930dc7b9eaa47874b3536944a47654b.sol(14)

[33mWarning[0m for UnrestrictedWrite in contract 'Paymec':
    |
    |        /* SafeMathMOd.sub will throw if there is not enough balance and if the transfer value is 0. */
  > |        balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
    |        balanceOf[_to] = balanceOf[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf1488f98b930dc7b9eaa47874b3536944a47654b.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Paymec':
    |        /* Balance holder does not need allowance to send from self. */
    |        if (allowed[_from][msg.sender] != MAX_UINT256 && _from != msg.sender) {
  > |            allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf1488f98b930dc7b9eaa47874b3536944a47654b.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Paymec':
    |        require(_spender != address(0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf1488f98b930dc7b9eaa47874b3536944a47654b.sol(148)

[33mWarning[0m for LockedEther in contract 'SafeMathMod':
    |pragma solidity ^0.4.17;
    |
  > |library SafeMathMod {// Partial SafeMath Library
    |
    |    function sub(uint256 a, uint256 b) internal pure returns (uint256 c) {
  at /home/jiaming/mavs_srcs/contract@0xf1488f98b930dc7b9eaa47874b3536944a47654b.sol(3)


