Processing contract: /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol:electrumdark
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
  at /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol(12)

[31mViolation[0m for LockedEther in contract 'electrumdark':
    | * https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
    | */
  > |contract electrumdark {
    |    using SafeMath for uint;
    |    event Transfer(
  at /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'electrumdark':
    | * https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
    | */
  > |contract electrumdark {
    |    using SafeMath for uint;
    |    event Transfer(
  at /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'electrumdark':
    |        symbol = 'ELD';
    |        name = 'electrumdark';
  > |        decimals = 18;
    |        totalSupply = 3900000000000000000000000;
    |        balances[msg.sender] = totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'electrumdark':
    |        name = 'electrumdark';
    |        decimals = 18;
  > |        totalSupply = 3900000000000000000000000;
    |        balances[msg.sender] = totalSupply;
    |        Transfer(address(0), msg.sender, totalSupply);
  at /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'electrumdark':
    |        decimals = 18;
    |        totalSupply = 3900000000000000000000000;
  > |        balances[msg.sender] = totalSupply;
    |        Transfer(address(0), msg.sender, totalSupply);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'electrumdark':
    |     */
    |    function transfer(address _to, uint _value) public returns (bool success) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'electrumdark':
    |    {
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'electrumdark':
    |        returns (bool success)
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcb8004d869257ff1cad1fd193255db6f1b7fd8d9.sol(168)


