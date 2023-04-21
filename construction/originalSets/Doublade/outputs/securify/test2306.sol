Processing contract: /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol:electro
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol(7)

[31mViolation[0m for LockedEther in contract 'electro':
    | * https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
    | */
  > |contract electro {
    |    using SafeMath for uint;
    |    event Transfer(
  at /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'electro':
    | * https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
    | */
  > |contract electro {
    |    using SafeMath for uint;
    |    event Transfer(
  at /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'electro':
    |        symbol = 'ell';
    |        name = 'electro';
  > |        decimals = 18;
    |        totalSupply = 39000000000000000000;
    |        balances[msg.sender] = totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'electro':
    |        name = 'electro';
    |        decimals = 18;
  > |        totalSupply = 39000000000000000000;
    |        balances[msg.sender] = totalSupply;
    |        Transfer(address(0), msg.sender, totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'electro':
    |        decimals = 18;
    |        totalSupply = 39000000000000000000;
  > |        balances[msg.sender] = totalSupply;
    |        Transfer(address(0), msg.sender, totalSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'electro':
    |     */
    |    function transfer(address _to, uint _value) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'electro':
    |    {
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'electro':
    |        returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x967652c716bbad985aa20c2ca016c3a896b68382.sol(163)


